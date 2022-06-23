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
    public partial class Signup_Company : System.Web.UI.Page
    {
        SqlConnection sqlConnection;
        SqlCommand sqlCommand;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register(object sender, EventArgs e)
        {
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            string insert = "Insert into CompanyMst(Cname,Address,City,State,Pincode,ContactPerson,MobileNo,Email,Website,Username,Password) " +
                "values(@cname,@address,@city,@state,@pincode,@contactperson,@mobileno,@email,@website,@username,@password)";

            sqlCommand = new SqlCommand(insert, sqlConnection);

            sqlCommand.Parameters.Add("@cname", Txt_companyname.Text);
            sqlCommand.Parameters.Add("@address", Txt_address.Text);
            sqlCommand.Parameters.Add("@city", Txt_city.Text);
            sqlCommand.Parameters.Add("@state", Txt_state.Text);
            sqlCommand.Parameters.Add("@pincode", Txt_pincode.Text);
            sqlCommand.Parameters.Add("@contactperson", Session["name"].ToString());
            sqlCommand.Parameters.Add("@mobileno", Session["mobileno"].ToString());
            sqlCommand.Parameters.Add("@email", Session["email"].ToString());
            sqlCommand.Parameters.Add("@website", Txt_website.Text);
            sqlCommand.Parameters.Add("@username", Session["username"].ToString());
            sqlCommand.Parameters.Add("@password", Session["password"].ToString());

            sqlCommand.ExecuteNonQuery();

            sqlCommand = new SqlCommand("Select Max(CID) from CompanyMst", sqlConnection);
            string sid = sqlCommand.ExecuteScalar().ToString();
            Session["uid"] = sid;

            Response.Redirect("Company_Dashboard.aspx");

        }
    }
}