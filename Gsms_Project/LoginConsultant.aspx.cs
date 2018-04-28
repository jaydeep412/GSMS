using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gsms_Project
{
    public partial class LoginConsultant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            


            SqlConnection connOfDatabase = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
            connOfDatabase.Open();
            String checkUserquery = "select count(*) from LoginConsultant where Username='" + TextBox1.Text + "'";
            SqlCommand commandForCheck = new SqlCommand(checkUserquery, connOfDatabase);
            int temp = Convert.ToInt32(commandForCheck.ExecuteScalar().ToString());
            connOfDatabase.Close();
            if (temp == 1)
            {
                connOfDatabase.Open();
                string checkPasswordQuery = "Select Password from LoginConsultant where Username='" + TextBox1.Text + "'";
                SqlCommand passwordCommand = new SqlCommand(checkPasswordQuery, connOfDatabase);
                string password = passwordCommand.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("HomePageConsultant.aspx");
                }
                else
                {
                    Response.Write("Password is not correct");
                }



            }
            else
            {
                Response.Write("Username is not correct");
            }
        }
    }
}