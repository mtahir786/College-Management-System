using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Manament_System
{
    public partial class AllStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewStudent.aspx");
        }
    }
}