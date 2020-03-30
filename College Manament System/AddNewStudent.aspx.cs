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

      

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
          SqlConnection con = new SqlConnection("Data Source=GL552vx;Initial Catalog=CollegeManagementSystem;Integrated Security=True");
           con.Open();
                                       


            SqlDataAdapter da = new SqlDataAdapter("select max(id) from Students ", con);
            DataSet ds = new DataSet();

            da.Fill(ds);
            con.Close();

            Int32 MaxId=170121000;
            MaxId = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            MaxId = MaxId + 1;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            String strSql;
        

            strSql = "Insert into Students (id,FirstName,LastName,Email,ContactNO,DOB,Gender,";
            strSql =  strSql + "FatherName,Address) values(";
            strSql = strSql + MaxId + ",'" + txtFirstName.Text + "','";
            strSql = strSql + txtLastName.Text + "','";
            strSql = strSql + txtEmailid.Text  +"','";
            strSql = strSql + txtContactNo.Text.ToString() + "','";
            strSql = strSql + txtDOB.Text + "','";
            strSql = strSql + DropDownListGender.SelectedItem.Value + "','";
            strSql = strSql + txtFatherName.Text + "','";
            strSql = strSql + txtAddress.Text + "')";





            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "Insert into Student (id,StdName) values(" + MaxId + ",'" + txtFirstName.Text + "')";
            cmd.CommandText = strSql;

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AllStudents.aspx");

            // Generate new id
            //String strSql;
            //strSql = "Select max(id) from Student ";
            //SqlDataAdapter da = new SqlDataAdapter(strSql, con);
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



        protected void CalendarDOB_SelectionChanged(object sender, EventArgs e)
        {
           
        }
 
    }
}