using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Orange_Project
{
    public partial class Login_Page : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["uid"] = null;
            alert.Text = "";
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            con.Open();
        }

        protected void login(object sender, EventArgs e)
        {
            alert.Text = "";
            String usname = username.Text;
            String password = passwrd.Text;
            String id = "";
            String value = "";
            if (DropDownList1.SelectedItem.Text=="Student")
            {
                try
                {
                    String query = "Select Password from StudentMst where Username = @usname";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@usname", usname);
                    value = cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                    query = "Select SID from StudentMst where Username = @usname and Password=@pswd";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@usname", usname);
                    cmd.Parameters.Add("@pswd", value);
                    id = cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                }
                catch
                {
                    value = "";
                }
                if (value.Equals(password))
                {
                    Session["uname"] = usname;
                    Session["password"] = password;
                    Session["uid"] = id;
                    String query = "Select Count(SID) from EducationMst where SID = @id";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@id", id);
                    int cnt = int.Parse(cmd.ExecuteScalar().ToString());
                    if(cnt==0)
                    {
                        Response.Redirect("Student_EducationDetails.aspx");
                    }
                    Response.Redirect("Student_Dashboard.aspx");
                }
                else
                {
                    alert.Text = "Login Failed";
                }
            }
            else if(DropDownList1.SelectedItem.Text=="Company")
            {
                //Button1.Text = "Company";
                try
                {
                    String query = "Select Password from CompanyMst where Username = @usname";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@usname", usname);
                    value = cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                    query = "Select CID from CompanyMst where Username = @usname and Password=@pswd";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.Add("@usname", usname);
                    cmd.Parameters.Add("@pswd", value);
                    id = cmd.ExecuteScalar().ToString();
                    cmd.Dispose();
                }
                catch
                {
                    value = "";
                }
                if (value.Equals(password))
                {
                    Session["uname"] = usname;
                    Session["password"] = password;
                    Session["uid"] = id;
                    Response.Redirect("Company_Dashboard.aspx");
                }
                else
                {
                    alert.Text = "Login Failed";
                }
            }
            
        }
    }
}