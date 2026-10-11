using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Trip_Planer.User
{
    public partial class MyTrips : System.Web.UI.Page
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
                Response.Redirect("../Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    getdata();
                }
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }


        void getdata()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                string query = "SELECT Id, Trip_Name, Destination, Start_Date, " +
                    "End_Date, Travellers, Trip_Type, Budget, Notes " +
                    "FROM Trip_tbl WHERE Email=@Email ORDER BY Id DESC";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                da.Fill(ds);

                gvTrips.DataSource = ds.Tables[0];
                gvTrips.DataBind();

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblMessage.Text = "No trips found. Create your first trip!";
                }
                else
                {
                    lblMessage.Text = "";
                }
            }
        }

        protected void gvTrips_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvTrips.EditIndex = e.NewEditIndex;
            getdata();
        }

        protected void gvTrips_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvTrips.EditIndex = -1;
            getdata();
        }

        protected void gvTrips_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvTrips.DataKeys[e.RowIndex].Value);
            GridViewRow row = gvTrips.Rows[e.RowIndex];

            string tripName = ((TextBox)row.Cells[0].Controls[0]).Text.Trim();
            string destination = ((TextBox)row.Cells[1].Controls[0]).Text.Trim();
            string startText = ((TextBox)row.Cells[2].Controls[0]).Text.Trim();
            string endText = ((TextBox)row.Cells[3].Controls[0]).Text.Trim();
            string travellersText = ((TextBox)row.Cells[4].Controls[0]).Text.Trim();
            string tripType = ((TextBox)row.Cells[5].Controls[0]).Text.Trim();
            string budget = ((TextBox)row.Cells[6].Controls[0]).Text.Trim();
            string notes = ((TextBox)row.Cells[7].Controls[0]).Text.Trim();

            DateTime startDate, endDate;
            int travellers;

            if (tripName == "" || destination == "" ||
                !DateTime.TryParse(startText, out startDate) ||
                !DateTime.TryParse(endText, out endDate) ||
                !int.TryParse(travellersText, out travellers) ||
                travellers < 1 || endDate < startDate ||
                tripType == "" || budget == "")
            {
                lblMessage.Text = "Please enter valid trip details.";
                gvTrips.EditIndex = -1;
                getdata();
                return;
            }

            using (SqlConnection con = new SqlConnection(s))
            {
                string query = "UPDATE Trip_tbl SET Trip_Name=@Name, " +
                    "Destination=@Destination, Start_Date=@StartDate, " +
                    "End_Date=@EndDate, Travellers=@Travellers, " +
                    "Trip_Type=@TripType, Budget=@Budget, Notes=@Notes " +
                    "WHERE Id=@Id AND Email=@Email";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", tripName);
                cmd.Parameters.AddWithValue("@Destination", destination);
                cmd.Parameters.AddWithValue("@StartDate", startDate);
                cmd.Parameters.AddWithValue("@EndDate", endDate);
                cmd.Parameters.AddWithValue("@Travellers", travellers);
                cmd.Parameters.AddWithValue("@TripType", tripType);
                cmd.Parameters.AddWithValue("@Budget", budget);
                cmd.Parameters.AddWithValue("@Notes",
                    notes == "" ? (object)DBNull.Value : notes);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());

                con.Open();
                int result = cmd.ExecuteNonQuery();

                gvTrips.EditIndex = -1;

                if (result > 0)
                {
                    lblMessage.Text = "Trip Updated Successfully!";
                }
                else
                {
                    lblMessage.Text = "Trip was not updated.";
                }
            }

            getdata();
        }

        protected void gvTrips_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvTrips.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(s))
            {
                string query = "DELETE FROM Trip_tbl WHERE Id=@Id AND Email=@Email";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());

                con.Open();
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    lblMessage.Text = "Trip Deleted Successfully!";
                }
                else
                {
                    lblMessage.Text = "Trip was not deleted.";
                }
            }

            gvTrips.EditIndex = -1;
            getdata();
        }
    }
}


       