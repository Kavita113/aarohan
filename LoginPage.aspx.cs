using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace Project_UI
{
    public partial class LoginPage : System.Web.UI.Page
    {

        private string connectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string emailOrPhone = EmailPhone.Text.Trim();
            string password = Password.Text.Trim();
            string userType = UserRadio.Checked ? "User" : (AdvocateRadio.Checked ? "Advocate" : "");

            if (string.IsNullOrEmpty(userType))
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Please select a user type.');", true);
                return;
            }

            bool isLoginValid = IsValidLogin(emailOrPhone, password, userType);

            if (isLoginValid)
            {
                // Redirect to the appropriate page (e.g., user dashboard or advocate dashboard)
                Response.Redirect(userType == "User" ? "home.aspx" : "home.aspx");
            }
            else
            {
                // Show error message: Invalid login
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Invalid email/phone or password.');", true);
            }
        }

        private bool IsValidLogin(string emailOrPhone, string password, string userType)
        {
            string tableName = userType == "Advocate" ? "AdvocateRegistration" : "UserRegistration";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    string query = $"SELECT COUNT(*) FROM {tableName} WHERE (Email = @Email OR PhoneNumber = @PhoneNumber) AND Password = @Password";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Email", emailOrPhone);
                        cmd.Parameters.AddWithValue("@PhoneNumber", emailOrPhone);
                        cmd.Parameters.AddWithValue("@Password", password);

                        int count = (int)cmd.ExecuteScalar();
                        return count > 0;
                    }
                }
                catch (Exception ex)
                {

                    Console.WriteLine("Error during login: " + ex.Message);
                    return false;
                }
            }
        }
    }
}