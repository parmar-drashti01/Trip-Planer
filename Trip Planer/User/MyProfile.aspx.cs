using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Trip_Planer.User
{
    public partial class MyProfile : System.Web.UI.Page
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
                Response.Redirect("~/Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                getcon();

                cmd = new SqlCommand(
                    "select * from Registration_tbl where Email='" +
                    Session["Email"].ToString().Trim() + "'", con);

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtFirstName.Text = ds.Tables[0].Rows[0]["First Name"].ToString();
                    txtLastName.Text = ds.Tables[0].Rows[0]["Last Name"].ToString();
                    txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    txtMobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                    txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                }


            }

            if (Session["ProfileMessage"] != null)
            {
                string message = Session["ProfileMessage"].ToString();

                Session.Remove("ProfileMessage");

                ClientScript.RegisterStartupScript(
                    this.GetType(),
                    "ProfileMessage",
                    "alert('" + message + "');",
                    true);
            }

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "update Registration_tbl set " +
                "[First Name]='" + txtFirstName.Text.Trim() + "', " +
                "[Last Name]='" + txtLastName.Text.Trim() + "', " +
                "Mobile='" + txtMobile.Text.Trim() + "', " +
                "Address='" + txtAddress.Text.Trim() + "' " +
                "where Email='" + Session["Email"].ToString() + "'", con);
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Session["ProfileMessage"] = "Profile Updated Successfully!";
                Response.Redirect("~/User/UserHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Profile Not Updated');</script>");
            }
        }
    }
}