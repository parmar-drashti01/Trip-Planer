using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient; //For Connection 
using System.Data; //For Dataset
using System.Configuration; //For ConnectionString

namespace Trip_Planer
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection con; //Fir Connrection
        SqlCommand cmd; //For insert, update, delete
        SqlDataAdapter da; //For Containner
        DataSet ds; //For Select

        String s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            gridFill();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void imgupload()
        {
            fnm = "images/" + Flpimg.FileName; //For Fetch FileName
            Flpimg.SaveAs(Server.MapPath(fnm)); //Copy File on Specific location
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //     lblOutput.Text = "<center>Registration Details </center> </br> " +
            //"First Name: " + txtFirstName.Text + "<br/>" +
            //"Last Name : " + txtLastName.Text + "<br/>" +
            //"Email : " + txtEmail.Text + "<br/>" +
            //"Mobile Number: " + txtMobile.Text + "<br/>" +
            //"Address : " + txtAddress.Text + "<br/>";
            //Label1.Text =
            //        "First Name : " + fname.Value + "<br/>" +
            //        "Last Name : " + lname.Value + "<br/>" +
            //        "Email : " + email.Value + "<br/>" +
            //        "Mobile : " + Mobilenumber.Value + "<br/>" +
            //        "Address : " + txtAddress.Text;

            if (Button1.Text == "Submit")
            {
                getcon();

                imgupload();

                cmd = new SqlCommand("insert into Registration_tbl([First Name], [Last Name], Email, Password, Mobile, Address, Image) values ('" + fname.Value + "', '" + lname.Value + "', '" + email.Value + "', '" + txtPassword.Text + "', '" + Mobilenumber.Value + "', '" + txtAddress.Text + "', '" + fnm + "')", con); cmd.ExecuteNonQuery();

                Session["RegisterMessage"] = "Registration Successful! Please Login.";

                Response.Redirect("Login.aspx");
            }
            else
            {
                getcon();

                cmd = new SqlCommand("update Registration_tbl set " + "[First Name] = '" + fname.Value + "', " + "[Last Name] = '" + lname.Value + "', " + "Email = '" + email.Value + "', " + "Mobile = '" + Mobilenumber.Value + "', " + "Address = '" + txtAddress.Text + "', " + "Image = '" + fnm + "' " + " Where Id = '" + ViewState["id"] + "'", con);

                cmd.ExecuteNonQuery();

                gridFill();

                clear();

                Button1.Text = "Submit";
            }

        }


        void gridFill()
        {
            getcon();

            da = new SqlDataAdapter("select * from Registration_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            GridView.DataSource = ds;
            GridView.DataBind();
        }

        void clear()
        {
            fname.Value = "";
            lname.Value = "";
            email.Value = "";
            Mobilenumber.Value = "";
            txtAddress.Text = "";

        }


        protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);

                ViewState["id"] = id;
                Filldata();
                Button1.Text = "Update";
            }

            else
            {
                getcon();

                // Delete
                cmd = new SqlCommand("delete from Registration_tbl Where Id = '" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                gridFill();
                clear();

                Button1.Text = "Submit";
            }
        }

        void Filldata()
        {
            getcon();

            da = new SqlDataAdapter("Select * from Registration_tbl Where Id = '" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            fname.Value = ds.Tables[0].Rows[0]["First Name"].ToString();

            lname.Value = ds.Tables[0].Rows[0]["Last Name"].ToString();

            email.Value = ds.Tables[0].Rows[0]["Email"].ToString();

            Mobilenumber.Value = ds.Tables[0].Rows[0]["Mobile"].ToString();

            txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
        }

    }
}