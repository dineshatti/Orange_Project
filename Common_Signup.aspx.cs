using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Orange_Project
{
    public partial class Common_Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit(object sender, EventArgs e)
        {
            Session["name"] = Txt_name.Text;
            Session["username"] = Txt_username.Text;
            Session["password"] = Txt_password.Text;
            Session["email"] = Txt_email.Text;
            Session["mobileno"] = Txt_areacode.Text + Txt_number.Text;
            if (Radio_student.Checked == true)
            {
                Response.Redirect("Student_Signup.aspx");
            }
            else
            {
                Response.Redirect("Signup_Company.aspx");
            }

        }
    }
}