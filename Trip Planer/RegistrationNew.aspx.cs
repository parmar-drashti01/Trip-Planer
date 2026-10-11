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
    public partial class RegistrationNew : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtName.Text) ||
        String.IsNullOrEmpty(txtEmail.Text) ||
        String.IsNullOrEmpty(txtPassword.Text) ||
        String.IsNullOrEmpty(txtConfirmPassword.Text))
            {
                lblMessage.Text = "Please fill all fields";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                lblMessage.Text = "Password and Confirm Password do not match";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            getcon();

            cmd = new SqlCommand(
                "select count(*) from Registration_tbl where Email='" +
                txtEmail.Text.Trim() + "'", con);

            int check = Convert.ToInt32(cmd.ExecuteScalar());

            if (check > 0)
            {
                lblMessage.Text = "Email already registered";
                lblMessage.ForeColor = System.Drawing.Color.Red;

                con.Close();
                return;
            }

            string[] name = txtName.Text.Trim().Split(' ');

            string firstName = name[0];
            string lastName = "";

            if (name.Length > 1)
            {
                lastName = name[1];
            }

            cmd = new SqlCommand(
                "insert into Registration_tbl([First Name], [Last Name], Email, Password, Mobile, Address, Image) values('" +
                firstName + "','" +
                lastName + "','" +
                txtEmail.Text.Trim() + "','" +
                txtPassword.Text + "','','','')", con);

            cmd.ExecuteNonQuery();

            Session["RegisterMessage"] = "Registration successful! Please login.";

            Response.Redirect("Login.aspx");

            txtName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }
    }
}