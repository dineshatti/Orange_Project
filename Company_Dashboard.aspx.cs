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
    public partial class Company_Dashboard : System.Web.UI.Page
    {
        string id;
        SqlConnection sqlConnection;
        SqlCommand sqlCommand;
        SqlDataAdapter sqlDataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uid"]==null)
            {
                Response.Redirect("Login_Page.aspx");
            }
            id = Session["uid"].ToString();
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();
            string query = "Select Role as 'Job Title', JobLocation as 'Job Location',Requiredskill as 'Skill', LastApplyDate as 'Closure Date', (select count(JID) from ApplyJobMst where JID = AddJobMst.JobID) as 'No of Candidates applied' from AddJobMst where cid ="+id;
            
            sqlDataReader = new SqlDataAdapter(query, sqlConnection);
            DataSet ds = new DataSet();
            sqlDataReader.Fill(ds);
            bool val = false;
            if (ds.Tables[0].Rows.Count==0)
            {
                val = true;
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Label1.Text = "JOBS HOSTED";


            if (val)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "NO JOB POSTED";
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}