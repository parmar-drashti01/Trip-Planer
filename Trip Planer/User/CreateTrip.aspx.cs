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
                Response.Redirect("../Login.aspx");
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnCreateTrip_Click(object sender, EventArgs e)
        {
            if (txtTripName.Text != "" && txtDestination.Text != "" && txtStartDate.Text != "" && txtEndDate.Text != "" && txtTravellers.Text != "")
            {
                getcon();

                cmd = new SqlCommand("insert into Trip_tbl " + "(Email, Trip_Name, Destination, Start_Date, End_Date, Travellers, Trip_Type, Budget, Notes) " + "values ('" + Session["Email"] + "', '" + txtTripName.Text + "', '" + txtDestination.Text + "', '" + txtStartDate.Text + "', '" + txtEndDate.Text + "', '" + txtTravellers.Text + "', '" + ddlTripType.SelectedValue + "', '" + txtBudget.Text + "', '" + txtNotes.Text + "')", con);

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Redirect("MyTrips.aspx");
            }
            else
            {
                Response.Write("Please Enter All Required Details");
            }
        }

        protected void txtTripName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
