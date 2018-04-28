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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            var sessionOfBmi = Session["bmi"];

            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                conn.Open();
                string insertBmi = "Update Member set Feedback=@feedback where username='" + sessionOfBmi + "'";

                SqlCommand com = new SqlCommand(insertBmi, conn);

                com.Parameters.AddWithValue("@feedback", txtFeedback.Text);

                com.ExecuteNonQuery();
                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

            Response.Redirect("HomePageMember.aspx");
        }
    }
}