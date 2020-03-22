using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Manament_System
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Faculty_Page_Click(object sender, EventArgs e)
        {
            Response.Redirect("Faculty_login.aspx");
        }

        protected void Student_Page_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_login.aspx");

        }


    }
}