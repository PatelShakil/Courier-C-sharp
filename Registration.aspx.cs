using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
if(con.State==ConnectionState.Open)
        {
con.Close();
}
con.Open();
    }

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\Visual Studio Projects\Courier C-sharp\App_Data\courier.mdf;Integrated Security=True");
    protected void OnRegistrationClick(object sender, EventArgs e)
{
    try
    {
        if (Page.IsValid)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into users(name, phone, email, pass) values('" + txtUsername.Text + "','" + txtPhoneNumber.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "')";
            cmd.ExecuteNonQuery();

            Response.Redirect("Home.aspx?email=" + txtEmail.Text);

            con.Close();
            txtUsername.Text = "";
            txtPhoneNumber.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
        }
    }
    catch (Exception ex)
    {
        // Display an alert with the exception message
        string errorMessage = "An error occurred: " + ex.Message.Replace("'", @"\'").Replace("\n", @"\n").Replace("\r", @"\r");
        string script = "alert('{errorMessage}');";
        ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", script, true);
    }
}

}