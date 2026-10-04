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
    public partial class AddItinerary : System.Web.UI.Page
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

            if (Request.QueryString["Id"] == null)
            {
                Response.Redirect("MyTrips.aspx");
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void txtDayTitle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtDayNo.Text != "" &&
        txtDayTitle.Text != "" &&
        txtActivityTime.Text != "" &&
        txtActivity.Text != "")
            {
                getcon();

                cmd = new SqlCommand(
                    "insert into Itinerary_tbl " +
                    "(Trip_Id, Day_No, Day_Title, Activity_Time, Activity) " +
                    "values (@Trip_Id, @Day_No, @Day_Title, @Activity_Time, @Activity)", con);

                cmd.Parameters.AddWithValue("@Trip_Id", Request.QueryString["Id"]);
                cmd.Parameters.AddWithValue("@Day_No", Convert.ToInt32(txtDayNo.Text));
                cmd.Parameters.AddWithValue("@Day_Title", txtDayTitle.Text);
                cmd.Parameters.AddWithValue("@Activity_Time", txtActivityTime.Text);
                cmd.Parameters.AddWithValue("@Activity", txtActivity.Text);

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Redirect("Itinerary.aspx?Id=" + Request.QueryString["Id"]);
            }
            else
            {
                Response.Write("Please Enter All Details");
            }
        }
    }
}
