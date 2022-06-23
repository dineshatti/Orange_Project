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
    public partial class Comp_Profile : System.Web.UI.Page
    {
        string id, password;
        SqlConnection sqlConnection;
        SqlCommand sqlCommand;
        SqlDataReader sqlDataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login_Page.aspx");
            }
            id = Session["uid"].ToString();
            password = Session["password"].ToString();
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();
            Panel1.Visible = true;
            Panel2.Visible = false;
            if (!IsPostBack)
                fun();
        }
        protected void fun()
        {
            string select = "Select * from CompanyMst where CID=@cid";
            sqlCommand = new SqlCommand(select, sqlConnection);

            sqlCommand.Parameters.Add("@cid", int.Parse(id));
            sqlDataReader = sqlCommand.ExecuteReader();
            sqlDataReader.Read();
            cname.Text = sqlDataReader["Cname"].ToString();
            address.Text = sqlDataReader["Address"].ToString();
            city.Text = sqlDataReader["City"].ToString();
            pincode.Text = sqlDataReader["Pincode"].ToString();
            state.Text = sqlDataReader["State"].ToString();
            name.Text = sqlDataReader["ContactPerson"].ToString();
            Email.Text = sqlDataReader["Email"].ToString();
            mobile.Text = sqlDataReader["Mobileno"].ToString();
            website.Text = sqlDataReader["Website"].ToString();
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string update = "update CompanyMst set City=@city, Pincode=@pincode, State=@state," +
                            "ContactPerson=@name, Email=@email, Mobileno=@mobile, Address=@address where " +
                            "CID=@cid";
            sqlCommand = new SqlCommand(update, sqlConnection);
            sqlCommand.Parameters.Add("@city", city.Text);
            sqlCommand.Parameters.Add("@address", address.Text);
            sqlCommand.Parameters.Add("@pincode", pincode.Text);
            sqlCommand.Parameters.Add("@state", state.Text);
            sqlCommand.Parameters.Add("@name", name.Text);
            sqlCommand.Parameters.Add("@email", Email.Text);
            sqlCommand.Parameters.Add("@mobile", mobile.Text);
            sqlCommand.Parameters.Add("@cid", id);

            sqlCommand.ExecuteNonQuery();
            string alert = "<script>alert(\"Profile Updated Successfully\");</script>";
            if (CheckBox2.Checked)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            //fun();
        }

        protected void Btn_pass(object sender, EventArgs e)
        {
            if (Txt_CPWD.Text == password)
            {
                string update = "update CompanyMst set Password=@pass where CID=@cid";
                sqlCommand = new SqlCommand(update, sqlConnection);

                sqlCommand.Parameters.Add("@pass", Txt_NPWD.Text);
                sqlCommand.Parameters.Add("@cid", int.Parse(id));

                sqlCommand.ExecuteNonQuery();
                fun();
            }
            else
            {
                string alert = "<script>alert(\"Current Password is Incorrect\");</script>";
                Response.Write(alert);
            }
        }
    }
}