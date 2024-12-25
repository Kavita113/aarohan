using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Project_UI.admin
{
    public partial class addCategory : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source = LENOVO\\SQLEXPRESS; Initial Catalog = Project_DB; Integrated Security = True");
            string path = Server.MapPath("Images/");
            if (f1.HasFile)
            {
                string ex = Path.GetExtension(f1.FileName);
                f1.SaveAs(path + f1.FileName);
                string filename = "Images/" + f1.FileName;
                string cmd = "INSERT INTO CaseCategory(categoryName,categoryImg,categoryDesc) VALUES('" + name.Text + "','" + filename + "','" + desc.Text + "')";
                SqlCommand cmd2 = new SqlCommand(cmd, conn);
                conn.Open();
                cmd2.ExecuteNonQuery();
              

            }
            else
            {
                Label1.Text = "folder not found";
            }
       

            SqlCommand cmd3 = new SqlCommand("SELECT * FROM CaseCategory",conn);

            GridView1.DataSource = cmd3.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }
    }
}