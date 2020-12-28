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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Username.BorderColor = System.Drawing.Color.Black;
            Password.BorderColor = System.Drawing.Color.Black;

            if (Session["Username"] == null && Session["Password"] == null)
            {
                return;
            }
            else
            {
                Username.Text = Session["Username"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string mycon = "server = localhost; Uid=root; password = ; persistsecurityinfo = True; database = test; Sslmode = none";
            MySqlConnection con = new MySqlConnection(mycon);
            DataTable dt = new DataTable();
            MySqlCommand cmd = con.CreateCommand();
            try
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from users where username='" + Username.Text + "' and passwords='" + Password.Text + "'";
                con.Open();
                cmd.ExecuteNonQuery();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    Session["Name"] = dr["Username"].ToString();
                    Session["Password"] = dr["Password"].ToString();
                    Response.Redirect("HomePage.aspx");
                }
                con.Close();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                con.Close();
            }

                }
        protected void Go_Login(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Username.Text))
            {
                Username.BorderColor = System.Drawing.Color.Red;
            }
            if (string.IsNullOrEmpty(Password.Text))
            {
                Password.BorderColor = System.Drawing.Color.Red;
            }
            //if (Session["Username"] == null && Session["Password"] == null)
            
            {
                Response.Redirect("HomePage.aspx");
            }
            //Response.Redirect("HomePage.aspx");
        }
        protected void Go_Back(object sender, EventArgs e)
        {
            Response.Redirect("LandingPage.aspx");
        }
    }
}