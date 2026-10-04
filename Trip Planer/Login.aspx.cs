using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient; // For Connection
using System.Data;           // For DataReader
using System.Configuration; // For ConnectionString

namespace Trip_Planer
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        String s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RegisterMessage"] != null)
            {
                lblMessage.Text = Session["RegisterMessage"].ToString();
                lblMessage.ForeColor = System.Drawing.Color.Green;

                Session.Remove("RegisterMessage");
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtEmail.Text) ||
               String.IsNullOrEmpty(txtPassword.Text))
            {
                lblMessage.Text = "Please Enter Email and Password";
            }
            else
            {
                getcon();

                cmd = new SqlCommand("select count(*) from Registration_tbl where Email='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "'", con);

                int i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["Email"] = txtEmail.Text;

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("Invalid Email or Password");
                }

                con.Close();
            }
        }
    }
}