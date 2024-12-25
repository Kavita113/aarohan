using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_UI
{
    public partial class subCategory : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = LENOVO\\SQLEXPRESS;Initial Catalog=Project_DB;Integrated Security= True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = $"SELECT * FROM CaseSubCategory WHERE CategoryId = {id}" ;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            CategoryRepeater.DataSource = dt;
            CategoryRepeater.DataBind();
            conn.Close();
        }
    }
}