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
    public partial class Comp_Inbox : System.Web.UI.Page
    {
        string id;
        SqlConnection sqlConnection;
        SqlCommand sqlCommand;
        SqlDataAdapter sqlDataAdapter;
        SqlDataReader sqlDataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login_Page.aspx");
            }
            id = Session["uid"].ToString();
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();
            DBLoad();

        }

        protected void DBLoad()
        {

            string query = "select S.SID as ID,Name as 'Candidate Name', Role as 'Job Title' " +
                " from AddJobMst ADJ inner join ApplyJobMst APJ on ADJ.JobId = APJ.JID" +
                " inner join StudentMst S on APJ.SID = S.SID where APJ.Status <> 'Accepted' and APJ.CID = " + int.Parse(id);


            sqlDataAdapter = new SqlDataAdapter(query, sqlConnection);
            DataSet ds = new DataSet();
            sqlDataAdapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "NO RESPONSES RECEIVED";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            ds.Clear();
            sqlDataAdapter.Dispose();
        }
        protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            if (e.CommandName == "State")
            {
                UpdateDataBase(index);
                DBLoad();
                return;
            }

            SqlCommand com = new SqlCommand("select data from ResumeMst where SID=@id", sqlConnection);
            com.Parameters.AddWithValue("@id", row.Cells[0].Text);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=" + "Resume.pdf"); // to open file prompt Box open or Save file  
                Response.BinaryWrite((byte[])dr["data"]);
                Response.Flush();
                Response.End();
            }
            dr.Close();
        }

        protected void UpdateDataBase(int index)
        {
            string str = "select SID,JID from ApplyJobMst APJ where APJ.Status <> 'Accepted' and APJ.CID = " + id;
            sqlCommand = new SqlCommand(str, sqlConnection);
            sqlCommand.Parameters.Add("@uid", id);
            sqlDataReader = sqlCommand.ExecuteReader();
            int i = 0;
            while (sqlDataReader.Read())
            {
                if (i == index)
                {
                    string sid = sqlDataReader["SID"].ToString();
                    string jid = sqlDataReader["JID"].ToString();
                    sqlDataReader.Close();
                    string update = "update ApplyJobMst set Status='Accepted' where JID=@jid and SID=@sid";

                    sqlCommand = new SqlCommand(update, sqlConnection);
                    sqlCommand.Parameters.Add("@sid", int.Parse(sid));
                    sqlCommand.Parameters.Add("@jid", int.Parse(jid));

                    sqlCommand.ExecuteNonQuery();

                    return;
                }
            }

        }
    }
}