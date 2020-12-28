using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace ACTIVITY_2.WebPages
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FirstName.BorderColor = System.Drawing.Color.Black;
            LastName.BorderColor = System.Drawing.Color.Black;
            Email.BorderColor = System.Drawing.Color.Black;
            Gender.BorderColor = System.Drawing.Color.Black;
            Username.BorderColor = System.Drawing.Color.Black;
            Password.BorderColor = System.Drawing.Color.Black;
        }
        protected void LogBtn_Click(object sender, EventArgs e)
        {    
        }
        protected void Go_Register(object sender, EventArgs e)
        {
                    string firstName = FirstName.Text;
                    string lastName = LastName.Text;
                    string email = Email.Text;
                    string gender = Gender.Text;
                    string username = Username.Text;
                    string password = Password.Text;
                    string mycon = "server = localhost; Uid=root; password = ; persistsecurityinfo = True; database = test; Sslmode = none";
                    MySqlConnection con = new MySqlConnection(mycon);
                    MySqlCommand cmd = null;
                    try
                    {
                        cmd = new MySqlCommand("INSERT INTO users(user_id,firstname,lastname,email,gender,username,password) values(@1,@2,@3,@4,@5,@6,@7);", con);
                        cmd.Parameters.AddWithValue("@1", null);
                        cmd.Parameters.AddWithValue("@2", firstName);
                        cmd.Parameters.AddWithValue("@3", lastName);
                        cmd.Parameters.AddWithValue("@4", email);
                        cmd.Parameters.AddWithValue("@5", gender);
                        cmd.Parameters.AddWithValue("@6", username);
                        cmd.Parameters.AddWithValue("@7", password);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
             }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                con.Close();
                return;
            }

            if (string.IsNullOrEmpty(FirstName.Text))
            {
                FirstName.BorderColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(LastName.Text))
            {
                LastName.BorderColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(Email.Text))
            {
                Email.BorderColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(Gender.Text))
            {
                Gender.BorderColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(Username.Text))
            {
                Username.BorderColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(Password.Text))
            {
                Password.BorderColor = System.Drawing.Color.Red;
            }
            if (!string.IsNullOrEmpty(FirstName.Text) && !string.IsNullOrEmpty(LastName.Text)
                && !string.IsNullOrEmpty(Email.Text)
                && !string.IsNullOrEmpty(Gender.Text)
                && !string.IsNullOrEmpty(Username.Text)
                && !string.IsNullOrEmpty(Password.Text))
            {
                Session["Username"] = Username.Text;
                Response.Redirect("LoginPage.aspx");
            }
        }
        protected void Go_Back(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }
        protected void Go_Login(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}