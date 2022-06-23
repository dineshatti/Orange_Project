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
    public partial class Student_Dashboard : System.Web.UI.Page
    {
        String uid;
        SqlConnection sqlConnection;
        int company_id;
        string company_name;

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
            func();

        }

        protected void CustomersGridView_SelectedIndexChanged(Object sender, EventArgs e)
        {
            GridViewRow row = CustomersGridView.SelectedRow;

            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            /*string name = "Raja";

            string getID = "select SID from StudentMst where Name = '" + name + "'";

            SqlCommand getIdCmd = new SqlCommand(getID, sqlConnection);

            string id = getIdCmd.ExecuteScalar().ToString();*/

            string id = uid ;


            string insert = "insert into ApplyJobMst values(@jid,@cid,@sid,@status,@date)";

            SqlCommand insertCmd = new SqlCommand(insert, sqlConnection);

            insertCmd.Parameters.Add("@jid", Convert.ToInt32(row.Cells[0].Text));
            insertCmd.Parameters.Add("@cid", Convert.ToInt32(row.Cells[1].Text));
            insertCmd.Parameters.Add("@sid", Convert.ToInt32(id));
            insertCmd.Parameters.Add("@status", "Applied");
            insertCmd.Parameters.Add("@date", DateTime.UtcNow.Date);

            company_id = Convert.ToInt32(row.Cells[1].Text);
            company_name = row.Cells[2].Text;

            insertCmd.ExecuteNonQuery();
            func();

        }

        protected void CustomersGridView_SelectedIndexChanging(Object sender, GridViewSelectEventArgs e)
        {
        }

        protected void func()
        {
            String id = uid;


            //-------------SKILL & QUALIFICATION------------------------

            string getSkillDegree = "select Skill,Degree from EducationMst where SID = " + id;

            SqlCommand getSkillDegreeCmd = new SqlCommand(getSkillDegree, sqlConnection);

            SqlDataReader readerobj = getSkillDegreeCmd.ExecuteReader();

            readerobj.Read();

            string skill = readerobj["Skill"].ToString();
            string qualification = readerobj["Degree"].ToString();

            readerobj.Close();

            //-------------MATCHED JOB ------------------------

            string jobdata = "select * from AddJobMst where Requiredskill = '" + skill + "' and " + "Min_Qualification = '" + qualification + "'and JobId not in (select jid from ApplyJobMst where Status in('Accepted','Applied') and SID=" + id + ")";

            SqlCommand jobDataCmd = new SqlCommand(jobdata, sqlConnection);

            SqlDataAdapter ad = new SqlDataAdapter(jobdata, sqlConnection);

            DataSet ds = new DataSet();
            ad.Fill(ds);

            CustomersGridView.DataSource = ds;
            CustomersGridView.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                err.Text = "No Jobs Matched for your Skill and Qualification";
            }

        }
    }
}