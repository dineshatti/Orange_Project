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
    public partial class Stud_Inbox : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login_Page.aspx");
            }
            uid = Session["uid"].ToString();

            if (!IsPostBack)
            {
                BindRepeator();
            }
        }
        private void BindRepeator()
        {
            con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            con.Open();
            String query = "Select cmp.Cname as Name,cmp.ContactPerson as Person,cmp.MobileNo as Mobile,ad.Role as Role from AddJobMst ad inner join ApplyJobMst ap on ad.JobId=ap.JID inner join CompanyMst cmp on cmp.CID=ap.CID where ap.Status='Accepted' AND ap.SID="+uid;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            if (dt.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "Inbox Empty";
            }
                       
        }
    }
}