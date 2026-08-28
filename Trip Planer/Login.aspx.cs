using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trip_Planer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (email == "" || password == "")
            {
                lblMessage.Text = "Please enter Email and Password.";
                return;
            }

            // Temporary login
            if (email == "admin@gmail.com" && password == "admin123")
            {
                lblMessage.Text = "Login Successful!";

                // Later we will redirect to Admin Dashboard
                // Response.Redirect("~/Admin/Dashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Email or Password.";
            }
        }
    }
}