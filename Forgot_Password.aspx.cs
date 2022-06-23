using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Orange_Project
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            con.Open();
        }

        protected void Forgot(object sender, EventArgs e)
        {
            String name = Txt_username.Text;
            String email = FP_Txt_emailid.Text;
            String mob = FP_Txt_mobileno.Text;
            String value = "";
            if(FP_Radio_student.Checked==true)
            {
                try
                {
                    String query = "Select Password from StudentMst where Username = @usname and Email = @mail and MobileNo = @ph";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@usname", name);
                    cmd.Parameters.Add("@mail", email);
                    cmd.Parameters.Add("@ph", mob);
                    value = "Recovered Password : "+ cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                }
                catch
                {
                    value = "No records Found!!!";
                }
            }
            else
            {
                try
                {
                    String query = "Select Password from CompanyMst where Username = @usname and Email = @mail and MobileNo = @ph";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@usname", name);
                    cmd.Parameters.Add("@mail", email);
                    cmd.Parameters.Add("@ph", mob);
                    value = "Recovered Password : " + cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                }
                catch
                {
                    value = "No records Found!!!";
                }
            }
            FP_Lbl_password.Text = value;
        }        
    }
}