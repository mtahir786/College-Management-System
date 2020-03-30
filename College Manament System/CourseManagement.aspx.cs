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
    public partial class CoursesTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_AddCourse_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=GL552vx;Initial Catalog=CollegeManagementSystem;Integrated Security=True");
            con.Open();
                                  
            //SqlDataAdapter da = new SqlDataAdapter("select max(id) from Students ", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //con.Close();

            //con.Open();
            SqlCommand cmd = con.CreateCommand();
            string strSql;
            strSql = "Insert into Courses (CourseCode,CourseName,SemesterOrYear,NoOfSemYear) ";
            strSql = strSql + "values('";
            strSql = strSql + TB_CourseCode.Text + "','" + TB_CourseName.Text + "','";
            strSql = strSql + DD_DurationType.SelectedItem.Value + "',";
            strSql = strSql + TB_SemOrYear.Text +")";
                              
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strSql;

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}