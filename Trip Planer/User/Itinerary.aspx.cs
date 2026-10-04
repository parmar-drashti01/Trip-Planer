using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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
                Response.Redirect("../Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    getTripDetails();
                    getItinerary();
                }
            }

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void getTripDetails()
        {
            if (Request.QueryString["Id"] == null)
            {
                Response.Redirect("MyTrips.aspx");
            }

            getcon();

            da = new SqlDataAdapter(
                "select * from Trip_tbl where Id='" +
                Request.QueryString["Id"] +
                "' and Email='" + Session["Email"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];

                lblTripName.Text = dr["Trip_Name"].ToString();
                lblDestination.Text = dr["Destination"].ToString();

                lblStartDate.Text =
                    Convert.ToDateTime(dr["Start_Date"]).ToString("dd-MM-yyyy");

                lblEndDate.Text =
                    Convert.ToDateTime(dr["End_Date"]).ToString("dd-MM-yyyy");
            }
            else
            {
                Response.Redirect("MyTrips.aspx");
            }

        }

        void getItinerary()
        {
            getcon();

            da = new SqlDataAdapter(
                "select * from Itinerary_tbl where Trip_Id='" +
                Request.QueryString["Id"] +
                "' order by Day_No", con);

            ds = new DataSet();
            da.Fill(ds);

            rptItinerary.DataSource = ds;
            rptItinerary.DataBind();

            
        }
    }
}