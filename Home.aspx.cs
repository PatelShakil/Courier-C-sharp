using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\Visual Studio Projects\Courier C-sharp\App_Data\courier.mdf;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {  
        if (!IsPostBack)
        {
            if (Request.QueryString["email"] == null)
            {
                errorText.Text = "You need to Login First";
            }else {
            Load_User_Data(Request.QueryString["email"].ToString());
            }
           
        }

    }

    protected void Load_User_Data(String email)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from users where email like '" + email + "'",con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
                if(reader.Read()){
            username.Text = "Login as " + reader["email"].ToString(); 
            Load_Data();

        }
        }
        else
        {

            errorText.Text = "You need to Login First";
        }
        
    }
    protected void Load_Data()
    {
            // Assuming con is your SqlConnection
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM couriers", con);
            SqlDataReader reader = cmd.ExecuteReader();
            
            // Bind the data to a GridView or another control for display
            rptServices.DataSource = reader;
            rptServices.DataBind();
            reader.Close();
            con.Close();
    }
}