using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient; //For Connection 
using System.Data; //For Dataset
using System.Configuration; //For ConnectionString


namespace Trip_Planer.User
{
    public partial class CreateTrip : System.Web.UI.Page
    {
        SqlConnection con; //Fir Connrection
        SqlCommand cmd; //For insert, update, delete
        SqlDataAdapter da; //For Containner
        DataSet ds; //For Select

        String s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

            if (Session["TripMessage"] != null)
            {
                string message = Session["TripMessage"].ToString();
                Session.Remove("TripMessage");
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["destination"] != null)
                {
                    txtDestination.Text = Request.QueryString["destination"];
                }
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnCreateTrip_Click(object sender, EventArgs e)
        {
            if (txtTripName.Text == "" || txtDestination.Text == "" ||
               txtStartDate.Text == "" || txtEndDate.Text == "" ||
               txtTravellers.Text == "" || ddlTripType.SelectedValue == "" ||
               txtBudget.Text == "")
            {
                lblMessage.Text = "Please fill all required fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            DateTime startDate;
            DateTime endDate;
            int travellers;

            if (!DateTime.TryParse(txtStartDate.Text, out startDate) ||
                !DateTime.TryParse(txtEndDate.Text, out endDate))
            {
                lblMessage.Text = "Please enter valid dates.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (endDate < startDate)
            {
                lblMessage.Text = "End Date must be after Start Date.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!int.TryParse(txtTravellers.Text, out travellers) || travellers < 1)
            {
                lblMessage.Text = "Please enter a valid number of travellers.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                using (con = new SqlConnection(s))
                {
                    string query = "INSERT INTO Trip_tbl " +
    "(Email, Trip_Name, Destination, Start_Date, End_Date, Travellers, Trip_Type, Budget, Notes) " +
    "VALUES (@Email, @TripName, @Destination, @StartDate, @EndDate, @Travellers, @TripType, @Budget, @Notes)";

                    cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
                    cmd.Parameters.AddWithValue("@TripName", txtTripName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Destination", txtDestination.Text.Trim());
                    cmd.Parameters.AddWithValue("@StartDate", startDate);
                    cmd.Parameters.AddWithValue("@EndDate", endDate);
                    cmd.Parameters.AddWithValue("@Travellers", travellers);
                    cmd.Parameters.AddWithValue("@TripType", ddlTripType.SelectedValue);
                    cmd.Parameters.AddWithValue("@Budget", txtBudget.Text.Trim());

                    if (txtNotes.Text.Trim() == "")
                    {
                        cmd.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = DBNull.Value;
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Notes", txtNotes.Text.Trim());
                    }

                    con.Open();

                    int i = cmd.ExecuteNonQuery();

                    if (i > 0)
                    {
                        Session["TripMessage"] = "Trip Created Successfully!";
                        Response.Redirect("~/User/UserHome.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Trip Not Created.";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + Server.HtmlEncode(ex.Message);
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void txtStartDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}




