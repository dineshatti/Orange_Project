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
    public partial class Applied_Job : System.Web.UI.Page
    {
        SqlConnection sqlConnection;
        string uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login_Page.aspx");
            }


            uid = Session["uid"].ToString();
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            //-------------ID------------------------
            /*string name = "Raja";

            string getID = "select SID from StudentMst where Name = '" + name + "'";

            SqlCommand getIdCmd = new SqlCommand(getID, sqlConnection);

            string id = getIdCmd.ExecuteScalar().ToString();*/

            string id = uid;



            string jobs = "select JobId,Company_Name,Role,Expected_Salary,JobLocation,JobDescription,EntryDate,Status from AddJobMst inner join ApplyJobMst  on AddJobMst.JobId = ApplyJobMst.JID where SID = " + id;

            SqlCommand jobsCmd = new SqlCommand(jobs, sqlConnection);

            SqlDataAdapter ad = new SqlDataAdapter(jobs, sqlConnection);

            DataSet ds = new DataSet();
            ad.Fill(ds);

            AppliedJobsGridView.DataSource = ds;
            AppliedJobsGridView.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                err.Text = "No Jobs Applied yet";
            }

        }
    }
}