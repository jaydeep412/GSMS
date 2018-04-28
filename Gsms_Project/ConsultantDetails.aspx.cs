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
    public partial class ConsultantDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                conn.Open();
                
                string deleteConsultant = "DELETE FROM Consultant WHERE username = '" + Request.QueryString["name"] + "';";
                string deleteLogin = "DELETE FROM LoginConsultant WHERE Username = '" + Request.QueryString["name"] + "';";
                string deleteUser = "DELETE FROM UserApp WHERE username = '" + Request.QueryString["name"] + "';";
                SqlCommand com = new SqlCommand(deleteConsultant, conn);
                SqlCommand comm = new SqlCommand(deleteLogin, conn);
                SqlCommand command = new SqlCommand(deleteUser,conn);

                com.ExecuteNonQuery();
                comm.ExecuteNonQuery();
                command.ExecuteNonQuery();
                conn.Close();


                Response.Redirect("ManageConsultant.aspx");


            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}