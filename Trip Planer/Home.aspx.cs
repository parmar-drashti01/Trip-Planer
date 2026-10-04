using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Trip_Planer
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;

        DataSet ds;
        String s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                getcon();
                da = new SqlDataAdapter("select * from Registration_tbl where Email='" + Session["Email"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string name = ds.Tables[0].Rows[0]["First Name"].ToString();
                    lblWelcome.Text = "Welcome, " + name;
                }
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
        }
    }
}

