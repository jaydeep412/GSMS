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
    public partial class ConsultantRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {

        

            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                conn.Open();
                string insertConsultant = "Insert into Consultant (name,username,password,dateofbirth,address,email,contact,experience) values (@name,@username,@password,@dateofbirth,@address,@email,@contact,@experience)";

                SqlCommand com = new SqlCommand(insertConsultant, conn);

                com.Parameters.AddWithValue("@name", txtName.Text);
                com.Parameters.AddWithValue("@username", txtUserName.Text);
                com.Parameters.AddWithValue("@password", txtPassword.Text);
                com.Parameters.AddWithValue("@dateofbirth", txtBirth.Text);
                com.Parameters.AddWithValue("@address", txtAddress.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@contact", txtContact.Text);
                com.Parameters.AddWithValue("@experience", txtExp.Text);

                com.ExecuteNonQuery();
                conn.Close();


                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                connection.Open();

                string insertLogIn = "Insert into LoginConsultant (Username,Password) values (@userid,@passcode)";
                SqlCommand command = new SqlCommand(insertLogIn, connection);
                command.Parameters.AddWithValue("@userid", txtUserName.Text);
                command.Parameters.AddWithValue("@passcode", txtPassword.Text);


                command.ExecuteNonQuery();
                connection.Close();


                SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                connect.Open();
                string insertUser = "Insert into UserApp (username,name,dateofbirth,email,address) values (@username,@name,@dateofbirth,@email,@address)";

                SqlCommand comm = new SqlCommand(insertUser, connect);

                comm.Parameters.AddWithValue("@name", txtName.Text);
                comm.Parameters.AddWithValue("@username", txtUserName.Text);
                comm.Parameters.AddWithValue("@dateofbirth", txtBirth.Text);
                comm.Parameters.AddWithValue("@address", txtAddress.Text);
                comm.Parameters.AddWithValue("@email", txtEmail.Text);

                comm.ExecuteNonQuery();
                connect.Close();





                Response.Write("Consultant have been registered!");
                Response.Redirect("HomePageAdmin.aspx");
               
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConsultantRegistration.aspx");
        }
    }
}