using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trip_Planer.User
{
    public partial class Destinations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txtSearch.Text.Trim().ToLower();

            foreach (System.Web.UI.Control control in
                Page.FindControl("ContentPlaceHolder1").Controls)
            {
                SearchCards(control, search);
            }

        }
        private void SearchCards(System.Web.UI.Control parent, string search)
        {
        }
    }
}