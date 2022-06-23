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
    public partial class Add_Job : System.Web.UI.Page
    {
        string id;
        SqlConnection sqlConnection;
        SqlCommand sqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login_Page.aspx");
            }
            id = Session["uid"].ToString();
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();
            
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string cid = id;
            string companyname = getCompanyName(cid);

            string insert = "insert into AddJobMst(CID, Company_name, Requiredskill, Role, Min_Qualification," +
                " Expected_salary, JobLocation, JobDescription, LastApplyDate) " +
                "values(@CID, @Company_name, @Requiredskill, @Role, @Min_Qualification," +
                " @Expected_salary, @JobLocation, @JobDescription, @LastApplyDate)";
            sqlCommand = new SqlCommand(insert, sqlConnection);

            sqlCommand.Parameters.Add("@CID", cid);
            sqlCommand.Parameters.Add("@Company_name", companyname);
            sqlCommand.Parameters.Add("@Requiredskill", DropDown_skill.Text);
            sqlCommand.Parameters.Add("@Role", job_title.Text);
            sqlCommand.Parameters.Add("@Min_Qualification", DropDown_degree.Text);
            sqlCommand.Parameters.Add("@Expected_salary", salary.Text);
            sqlCommand.Parameters.Add("@JobLocation", location.Text);
            sqlCommand.Parameters.Add("@JobDescription", job_description.Text);
            DateTime date = DateTime.Parse(lastdate.Text);

            sqlCommand.Parameters.Add("@LastApplyDate", date);

            sqlCommand.ExecuteNonQuery();
            string str = "<script>alert(\"Job added successfully\");</script>";
            Response.Write(str);
            DropDown_degree.SelectedValue = null;
            DropDown_skill.SelectedValue = null;
            job_title.Text = null;
            salary.Text = null;
            location.Text = null;
            job_description.Text = null;
            lastdate.Text = null;
        }
        public string getCompanyName(string cid)
        {
            sqlCommand = new SqlCommand("Select CName from CompanyMst where CID = @CID", sqlConnection);
            sqlCommand.Parameters.Add("@CID", cid);
            return sqlCommand.ExecuteScalar().ToString();
        }
    }
}