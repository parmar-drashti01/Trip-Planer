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
                    gridFill();
                }
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void gridFill()
        {
            getcon();

            string email = Session["Email"].ToString().Trim();

            cmd = new SqlCommand(
                "select * from Trip_tbl where LTRIM(RTRIM(Email)) = @Email",
                con);

            cmd.Parameters.AddWithValue("@Email", email);

            da = new SqlDataAdapter(cmd);

            ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables.Count > 0)
            {
                rptTrips.DataSource = ds.Tables[0];
                rptTrips.DataBind();
            }
        }
        protected void rptTrips_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void rptTrips_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}