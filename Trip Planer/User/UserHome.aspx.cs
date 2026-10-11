using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trip_Planer.User
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ProfileMessage"] != null)
            {
                string message = Session["ProfileMessage"].ToString();
                Session.Remove("ProfileMessage");

                ClientScript.RegisterStartupScript(this.GetType(), "ProfileMessage", "alert('" + message + "');", true);
            }
        }
    }
}