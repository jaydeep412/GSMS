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
    public partial class Registration : System.Web.UI.Page
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
                string insertMember = "Insert into Member (name,username,password,dateofbirth,address,email,card) values (@name,@username,@password,@dateofbirth,@address,@email,@card)";
                
                SqlCommand com = new SqlCommand(insertMember, conn);
               
                com.Parameters.AddWithValue("@name", txtName.Text);
                com.Parameters.AddWithValue("@username",txtUserName.Text);
                com.Parameters.AddWithValue("@password",txtPassword.Text);
                com.Parameters.AddWithValue("@dateofbirth", txtBirth.Text);
                com.Parameters.AddWithValue("@address",txtAddress.Text);
                com.Parameters.AddWithValue("@email",txtEmail.Text);
                com.Parameters.AddWithValue("@card", card1.Text);

                com.ExecuteNonQuery();
                conn.Close();


                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                connection.Open();

                string insertLogIn = "Insert into LoginMember (Username,Password) values (@userid,@passcode)";
                SqlCommand command = new SqlCommand(insertLogIn, connection);
                command.Parameters.AddWithValue("@userid", txtUserName.Text);
                command.Parameters.AddWithValue("@passcode", txtPassword.Text);


                command.ExecuteNonQuery();
                connection.Close();

                SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                connect.Open();
                string insertUser = "Insert into UserApp (username,name,dateofbirth,address,email) values (@username,@name,@dateofbirth,@address,@email)";

                SqlCommand comm = new SqlCommand(insertUser, connect);

                comm.Parameters.AddWithValue("@name", txtName.Text);
                comm.Parameters.AddWithValue("@username", txtUserName.Text);
                comm.Parameters.AddWithValue("@dateofbirth", txtBirth.Text);
                comm.Parameters.AddWithValue("@address", txtAddress.Text);
                comm.Parameters.AddWithValue("@email", txtEmail.Text);

                comm.ExecuteNonQuery();
                connect.Close();





                Response.Write("You have been registered!");
                Response.Redirect("LoginMember.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void Account_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginMember.aspx");
        }

        protected void Clear_Click(object sender,EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

      

       
    }
}