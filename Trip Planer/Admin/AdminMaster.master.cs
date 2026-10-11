using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trip_Planer.Admin
{
    public partial class AdminMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                string email = Session["Email"].ToString().ToLower();

                if (email != "dparmar190@rku.ac.in" &&
                    email != "drathod997@rku.ac.in")
                {
                    Response.Redirect("~/User/UserHome.aspx");
                }
            }
        }
    }
}