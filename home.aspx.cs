using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Project_UI
{
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LENOVO\\SQLEXPRESS;Initial Catalog=Project_DB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           loadCaseCategory();
            loadLawyersInfo();
        }
        public void loadCaseCategory()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM CaseCategory";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        public void loadLawyersInfo()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM AdvocateRegistration t1 INNER JOIN CaseCategory t2 ON t1.AreaOfSpecialization = t2.categoryId;  ";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // Debug: Check if data is being fetched
            if (dt.Rows.Count == 0)
            {
                Response.Write("No lawyers found in database.");
            }

            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            con.Close();
        }

    }
}