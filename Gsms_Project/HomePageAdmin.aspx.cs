using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gsms_Project
{
    public partial class HomePageAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void userBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListOfUsers.aspx");
        }

        protected void mngBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageConsultant.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }

        protected void msgBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessageAdmin.aspx");
        }
    }
}