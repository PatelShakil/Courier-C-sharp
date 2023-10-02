using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["email"]))
            {
                txtEmail.Text = Request.QueryString["email"].ToString();
            }
            else
            {
                Response.Redirect("~/Home.aspx"); // Redirect back to the home page or show an error message

            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Give_Feedback();
    }
    protected void Give_Feedback()
    {
        if (Page.IsValid)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\Visual Studio Projects\Courier C-sharp\App_Data\courier.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into feedback(courierId,name,email,feedback) values('" + Request.QueryString["ID"] + "','" + txtName.Text + "','" + txtEmail.Text + "','" + txtFeedback.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Home.aspx?email=" + Request.QueryString["email"].ToString());
        }
    }
}