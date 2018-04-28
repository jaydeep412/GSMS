using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gsms_Project
{
    public partial class WelcomePage : System.Web.UI.Page
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void userDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (userDropDownList.SelectedItem.Text == "Member")
            {
                Response.Redirect("LoginMember.aspx");
            }

            else if (userDropDownList.SelectedItem.Text == "Consultant")
            {
                Response.Redirect("LoginConsultant.aspx");
            }

            else if (userDropDownList.SelectedItem.Text == "Admin")
            {
                Response.Redirect("LoginAdmin.aspx");
            }
        }

       
    }
}