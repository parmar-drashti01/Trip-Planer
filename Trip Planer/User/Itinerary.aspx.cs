
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trip_Planer.User
{
    public partial class Itinerary : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                BindTrips();
                BindItinerary();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        private void BindTrips()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                string query = @"SELECT Id, Trip_Name
                                 FROM Trip_tbl
                                 WHERE Email = @Email
                                 ORDER BY Id DESC";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@Email", Session["Email"].ToString());

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        ddlTrip.DataSource = dt;
                        ddlTrip.DataTextField = "Trip_Name";
                        ddlTrip.DataValueField = "Id";
                        ddlTrip.DataBind();
                    }
                }
            }

            ddlTrip.Items.Insert(0,
                new ListItem("-- Select Trip --", ""));
        }

        protected void ddlTrip_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            BindItinerary();
        }

        protected void btnAddActivity_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";

            if (ddlTrip.SelectedValue == "")
            {
                lblMessage.Text = "Please select a trip first.";
                return;
            }

            int dayNo;

            if (!int.TryParse(txtDayNo.Text.Trim(), out dayNo) || dayNo <= 0)
            {
                lblMessage.Text = "Please enter a valid day number.";
                return;
            }

            if (txtDayTitle.Text.Trim() == "" ||
                txtActivityTime.Text.Trim() == "" ||
                txtActivity.Text.Trim() == "")
            {
                lblMessage.Text = "Please fill all activity fields.";
                return;
            }

            string query = @"INSERT INTO Itinerary_tbl
                             (Trip_Id, Day_No, Day_Title, Activity_Time, Activity)
                             SELECT T.Id, @DayNo, @DayTitle, @ActivityTime, @Activity
                             FROM Trip_tbl T
                             WHERE T.Id = @TripId
                             AND T.Email = @Email";

            using (SqlConnection con = new SqlConnection(s))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@TripId", Convert.ToInt32(ddlTrip.SelectedValue));

                    cmd.Parameters.AddWithValue(
                        "@Email", Session["Email"].ToString());

                    cmd.Parameters.AddWithValue(
                        "@DayNo", dayNo);

                    cmd.Parameters.AddWithValue(
                        "@DayTitle", txtDayTitle.Text.Trim());

                    cmd.Parameters.AddWithValue(
                        "@ActivityTime", txtActivityTime.Text.Trim());

                    cmd.Parameters.AddWithValue(
                        "@Activity", txtActivity.Text.Trim());

                    con.Open();

                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        lblMessage.Text = "Activity added successfully!";

                        txtDayNo.Text = "";
                        txtDayTitle.Text = "";
                        txtActivityTime.Text = "";
                        txtActivity.Text = "";

                        BindItinerary();
                    }
                    else
                    {
                        lblMessage.Text =
                            "Trip not found. Please select your trip again.";
                    }
                }
            }
        }

        private void BindItinerary()
        {
            if (ddlTrip.SelectedValue == "")
            {
                gvItinerary.DataSource = null;
                gvItinerary.DataBind();
                return;
            }

            using (SqlConnection con = new SqlConnection(s))
            {
                string query = @"SELECT I.Id, I.Day_No, I.Day_Title,
                                        I.Activity_Time, I.Activity
                                 FROM Itinerary_tbl I
                                 INNER JOIN Trip_tbl T ON I.Trip_Id = T.Id
                                 WHERE I.Trip_Id = @TripId
                                 AND T.Email = @Email
                                 ORDER BY I.Day_No, I.Id";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@TripId", Convert.ToInt32(ddlTrip.SelectedValue));

                    cmd.Parameters.AddWithValue(
                        "@Email", Session["Email"].ToString());

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        gvItinerary.DataSource = dt;
                        gvItinerary.DataBind();
                    }
                }
            }
        }
    }
}
