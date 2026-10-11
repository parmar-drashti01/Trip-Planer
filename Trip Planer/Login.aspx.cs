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
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            getcon();

            cmd = new SqlCommand(
                "select count(*) from Registration_tbl where Email='" +
                txtEmail.Text.Trim() +
                "' and Password='" +
                txtPassword.Text +
                "'", con);

            int i = Convert.ToInt32(cmd.ExecuteScalar());

            if (i > 0)
            {
                Session["Email"] = txtEmail.Text.Trim();

                string email = txtEmail.Text.Trim().ToLower();

                if (email == "dparmar190@rku.ac.in" ||
                    email == "drathod997@rku.ac.in")
                {
                    Response.Redirect("Admin/Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("User/UserHome.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invalid Email or Password";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }


        }
    }
}
