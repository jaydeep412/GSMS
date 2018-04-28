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
    public partial class BMICalculator : System.Web.UI.Page
    {
        float bmiFinal;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (RadioButtonImperial.Checked == true)
            {
              
                lblHeightUnitTwo.Visible = true;
                txtHeightTwo.Visible = true;
                lblHeightUnitOne.Text = "Feet";
                lblHeightUnitTwo.Text = "Inches";

                lblWeightUnit.Text = "Pound";

                lblResultTwo.Text = "";
            }

            else if (RadioButtonMetric.Checked == true)
            {
             
                lblHeightUnitOne.Text = "cm";
                lblHeightUnitTwo.Visible = false;
                txtHeightTwo.Visible = false;

                lblWeightUnit.Text = "kg";

                lblResultTwo.Text = "";

            }
        }

        protected void Bmi_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if(RadioButtonImperial.Checked == true)
            {
                txtHeightOne.Text = "";
                txtHeightTwo.Text = "";
                txtWeight.Text = "";
                lblHeightUnitOne.Text = "Feet";
                lblHeightUnitTwo.Text = "Inches";

                lblWeightUnit.Text = "Pound";

                lblResultTwo.Text = "";

            }

            else if(RadioButtonMetric.Checked ==true)
            {
                txtHeightOne.Text = "";
                txtHeightTwo.Text = "";
                txtWeight.Text = "";
                lblHeightUnitOne.Text = "cm";
                lblHeightUnitTwo.Visible = false;
                txtHeightTwo.Visible = false;

                lblWeightUnit.Text = "kg";

                lblResultTwo.Text = "";

            }

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (RadioButtonImperial.Checked)
            {
                double feet = double.Parse(txtHeightOne.Text);
                double inches = double.Parse(txtHeightTwo.Text);
                double pounds = double.Parse(txtWeight.Text);
                double resultImp;
                double height = (12 * feet) + inches;
                resultImp = (pounds / (height * height)) * 703.0;

                if (resultImp <= 16.5)
                {
                    lblResultTwo.Text = resultImp + " and you are severely underweight";
                }
                else if (resultImp >= 16.5 && resultImp < 18.5)
                {
                    lblResultTwo.Text = resultImp + " and you are underweight";
                }
                else if (resultImp >= 18.5 && resultImp < 25)
                {
                    lblResultTwo.Text = resultImp + " and you are normal";
                }
                else if (resultImp >= 25 && resultImp <= 30)
                {
                    lblResultTwo.Text = resultImp + " and you are overweight";
                }
                else if (resultImp > 30 && resultImp <= 35)
                {
                    lblResultTwo.Text = resultImp + "and you are obese";
                }
                else if (resultImp > 35 && resultImp <= 40)
                {
                    lblResultTwo.Text = resultImp + " and you are clinically obese";
                }
                else
                {
                    lblResultTwo.Text = resultImp + " and you are morbidly obese";
                }

                bmiFinal = (float)resultImp;

            }

            else if (RadioButtonMetric.Checked)
            {
                double height = double.Parse(txtHeightOne.Text);

                double weight = double.Parse(txtWeight.Text);
                double resultMet;

                resultMet = (weight / (height * height)) * 10000;

                if (resultMet <= 16.5)
                {
                    lblResultTwo.Text = resultMet + " and you are severely underweight";
                }
                else if (resultMet >= 16.5 && resultMet < 18.5)
                {
                    lblResultTwo.Text = resultMet + " and you are underweight";
                }
                else if (resultMet >= 18.5 && resultMet < 25)
                {
                    lblResultTwo.Text = resultMet + " and you are normal";
                }
                else if (resultMet >= 25 && resultMet <= 30)
                {
                    lblResultTwo.Text = resultMet + " and you are overweight";
                }
                else if (resultMet > 30 && resultMet <= 35)
                {
                    lblResultTwo.Text = resultMet + " and you are obese";
                }
                else if (resultMet > 35 && resultMet <= 40)
                {
                    lblResultTwo.Text = resultMet + " and you are clinically obese";
                }
                else
                {
                    lblResultTwo.Text = resultMet + " and you are morbidly obese";
                }

                bmiFinal = (float)resultMet;

            }

            var sessionOfBmi = Session["bmi"];
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GsmsConnectionString"].ConnectionString);
                conn.Open();
                string insertBmi = "Update Member set bmi=@bmi where username='" + sessionOfBmi + "'";

                SqlCommand com = new SqlCommand(insertBmi, conn);

                com.Parameters.AddWithValue("@bmi", bmiFinal);

                com.ExecuteNonQuery();
                conn.Close();
            }
        
             catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtHeightOne.Text = "";
            txtHeightTwo.Text = "";
            txtWeight.Text = "";
            RequiredFieldValidatorHeightOne.ErrorMessage = "";
            RequiredFieldValidatorHeightTwo.ErrorMessage= "";
            RequiredFieldValidatorWeight.ErrorMessage = "";
        }

        protected void resetClick(object sender, EventArgs e)
        {
            txtHeightOne.Text = "";
            txtHeightTwo.Text = "";
            txtWeight.Text = "";
            RequiredFieldValidatorHeightOne.ErrorMessage = "";
            RequiredFieldValidatorHeightTwo.ErrorMessage = "";
            RequiredFieldValidatorWeight.ErrorMessage = "";
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePageMember.aspx");
        }
    }
}