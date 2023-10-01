using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\Visual Studio Projects\Courier C-sharp\App_Data\courier.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            
                con.Open();
            
           
        }

        protected void OnLoginClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                con.Open();
                // Validate the user's credentials against the database
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM users WHERE email = @Email AND pass = @Password", con);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                int count = (int)cmd.ExecuteScalar();

                if (count == 1)
                {
                    // Successful login, redirect to the home page or another page
                    Response.Redirect("Home.aspx?email=" + email );
                    con.Close();
                }
                else
                {
                    // Display an error message for invalid credentials
                    // You can use a Label or other control to show the error message
                    // For simplicity, we'll use JavaScript alert here
                    ClientScript.RegisterStartupScript(this.GetType(), "InvalidLogin", "alert('Invalid email or password.');", true);
                    con.Close();
                }
            }
        }
    }
