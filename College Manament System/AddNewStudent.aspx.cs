using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace College_Manament_System
{

    public partial class AdddNewStudent : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        { 
        

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
          SqlConnection con = new SqlConnection("Data Source=GL552VX;Initial Catalog=College_Database;Integrated Security=True");


            con.Open();

            // Generate new id
            //String strSql;
            //strSql = "Select max(id) from Student "; 
            //SqlDataAdapter da =  new SqlDataAdapter(strSql, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //string id;
            //id = ds.Tables[0].Rows[0][1].ToString();
           


       
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "Insert into Student (id,StdName) values(100,'Tahir')";
            //cmd.ExecuteNonQuery();
            //con.Close();




            
        }
    }
}