using System;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\Visual Studio Projects\Courier C-sharp\App_Data\courier.mdf;Integrated Security=True");
    int providerId = 0;
        String email = "";
protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if the ProviderID query parameter exists and is valid
            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {

                // Load and display details for the selected courier provider
            
               LoadProviderDetails(int.Parse(Request.QueryString["ID"]));
            }
            else
            {
                // Handle invalid or missing query parameter
                Response.Redirect("~/Home.aspx"); // Redirect back to the home page or show an error message
            }
        }
    }
    private void LoadProviderDetails(int providerID)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM couriers WHERE ID = @ProviderID", con);
        cmd.Parameters.AddWithValue("@ProviderID", providerID);
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            // Populate page controls with data from the database
            lblName.Text = reader["name"].ToString();
            lblDescription.Text = reader["description"].ToString();
            lblCost.Text = Convert.ToDecimal(reader["cost"]).ToString("C");
            imgProvider.ImageUrl = reader["image"].ToString();
            string originalText = reader["whyus"].ToString();
            string modifiedText = Regex.Replace(originalText, @"\d+", match => "<br><br>" + match.Value);
            whyus.Text = modifiedText;


        }
        else
        {
            // Handle the case where the specified provider ID is not found in the database
            Response.Redirect("~/Home.aspx"); // Redirect back to the home page or show an error message
        }

        reader.Close();
        con.Close();
    }

    protected void OnFeedBackClick(Object sender, EventArgs e)
    {
        Response.Redirect("Feedback.aspx?" + "ID=" + Request.QueryString["ID"].ToString() + "&email=" + Request.QueryString["email"]);
    }
}
