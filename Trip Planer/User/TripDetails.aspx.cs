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
    public partial class TripDetails : System.Web.UI.Page
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
                    getDetails();
                }
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void getDetails()
        {
            if (Request.QueryString["Id"] == null)
            {
                Response.Redirect("MyTrips.aspx");
            }

            getcon();

            da = new SqlDataAdapter(
                "select * from Trip_tbl where Id='" + Request.QueryString["Id"] +
                "' and Email='" + Session["Email"] + "'", con);

            ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];


                lblTripName.Text = dr["Trip_Name"].ToString();

                lblDestination.Text = dr["Destination"].ToString();

                lblTripType.Text = dr["Trip_Type"].ToString();

                lblStartDate.Text = Convert.ToDateTime(dr["Start_Date"]).ToString("dd-MM-yyyy");

                lblEndDate.Text = Convert.ToDateTime(dr["End_Date"]).ToString("dd-MM-yyyy");

                lblTravellers.Text = dr["Travellers"].ToString();

                lblBudget.Text = dr["Budget"].ToString();

                lblNotes.Text = dr["Notes"].ToString();
                lnkItinerary.NavigateUrl = "AddItinerary.aspx?Id=" + Request.QueryString["Id"];
            }
            else
            {
                Response.Redirect("MyTrips.aspx");
            }
        }
    }
}