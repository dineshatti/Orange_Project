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
    public partial class Stud_Profile : System.Web.UI.Page
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

            Prof_Head.Text = "PROFILE";

            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            //-------------ID------------------------

            /*string name = "Raja";

            string getID = "select SID from StudentMst where Name = '" + name + "'";

            SqlCommand getIdCmd = new SqlCommand(getID, sqlConnection);

            string id = getIdCmd.ExecuteScalar().ToString();*/

            string id = uid;


            //-----------------STUDENTDATA--------------

            string student = "select * from StudentMst where SID = " + id;

            SqlCommand studentCmd = new SqlCommand(student, sqlConnection);

            SqlDataAdapter ad = new SqlDataAdapter(student, sqlConnection);

            DataSet ds = new DataSet();
            ad.Fill(ds);

            StudentView.DataSource = ds;
            StudentView.DataBind();

            EditTable.Visible = false;
            Btn_Save.Visible = false;

            changepasswordpanel.Visible = false;
        }

        protected void OnEdit_Profile(object sender, EventArgs e)
        {
            StudentView.Visible = false;
            EditTable.Visible = true;
            Btn_Edit.Visible = false;
            Btn_Save.Visible = true;
            Prof_Head.Text = "EDIT PROFILE";

            Btn_Pwd.Visible = false;

            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            //-------------ID------------------------

            /*string name = "Raja";

            string getID = "select SID from StudentMst where Name = '" + name + "'";

            SqlCommand getIdCmd = new SqlCommand(getID, sqlConnection);

            string id = getIdCmd.ExecuteScalar().ToString();*/

            string id = uid;

            string query = "select S.Address,S.City,S.State,S.Pincode,S.MobileNo,S.Email,E.Semester,E.Cgpa,E.Skill from StudentMst S inner join EducationMst E on S.SID = E.SID where S.SID =" + id;

            SqlCommand queryCmd = new SqlCommand(query, sqlConnection);

            SqlDataReader dr = queryCmd.ExecuteReader();

            dr.Read();

            Txt_address.Text = dr[0].ToString();
            Txt_city.Text = dr[1].ToString();
            Txt_state.Text = dr[2].ToString();
            Txt_pincode.Text = dr[3].ToString();
            Txt_mobileno.Text = dr[4].ToString();
            Txt_email.Text = dr[5].ToString();
            DropDown_semester.Text = dr[6].ToString();
            Cgpa.Text = dr[7].ToString();
            DropDown_skill.Text = dr[8].ToString();


        }

        protected void OnSave_Profile(object sender, EventArgs e)
        {
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            //-------------ID------------------------

            /*string name = "Raja";

            string getID = "select SID from StudentMst where Name = '" + name + "'";

            SqlCommand getIdCmd = new SqlCommand(getID, sqlConnection);

            string id = getIdCmd.ExecuteScalar().ToString();*/

            string id = uid;

            string q = "update StudentMst set Address=@address,City=@city,State=@state,Pincode=@pincode,Mobileno=@mobileno,Email=@email where SID=" + id;

            SqlCommand qCmd = new SqlCommand(q, sqlConnection);


            qCmd.Parameters.Add("@address", Txt_address.Text);

            qCmd.Parameters.Add("@city", Txt_city.Text);

            qCmd.Parameters.Add("@state", Txt_state.Text);
            qCmd.Parameters.Add("@pincode", Txt_pincode.Text);



            qCmd.Parameters.Add("@mobileno", Txt_mobileno.Text);
            qCmd.Parameters.Add("@email", Txt_email.Text);


            qCmd.ExecuteNonQuery();

            string q2 = "update EducationMst set Semester=@sem,Cgpa = @cgpa,Skill = @skill where SID = " + id;

            SqlCommand q2Cmd = new SqlCommand(q2, sqlConnection);

            q2Cmd.Parameters.Add("@sem", DropDown_semester.Text);
            q2Cmd.Parameters.Add("@cgpa", Cgpa.Text);
            q2Cmd.Parameters.Add("@skill", DropDown_skill.Text);

            q2Cmd.ExecuteNonQuery();


            //--------UPDATED VALUE PRINT

            Prof_Head.Text = "UPDATED  PROFILE";

            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();

            //-------------ID------------------------

            /*string name2 = "Raja";

            string getID2 = "select SID from StudentMst where Name = '" + name2 + "'";

            SqlCommand getID2cmd = new SqlCommand(getID2, sqlConnection);

            string id2 = getID2cmd.ExecuteScalar().ToString();*/

            string id2 = uid;


            //-----------------STUDENTDATA--------------

            string student = "select S.Address,S.City,S.State,S.Pincode,S.MobileNo,S.Email,E.Semester,E.Cgpa,E.Skill from StudentMst S inner join EducationMst E on S.SID = E.SID where S.SID =" + id2;

            SqlCommand studentcmd5 = new SqlCommand(student, sqlConnection);

            SqlDataAdapter ad = new SqlDataAdapter(student, sqlConnection);

            DataSet ds = new DataSet();
            ad.Fill(ds);


            PersonalUpdateView.DataSource = ds;
            PersonalUpdateView.DataBind();

            Btn_Edit.Visible = false;

            Btn_Pwd.Visible = false;
            Btn_Save.Visible = false;

            string alert = "<script>alert(\"Profile updated successfully!!!\")</script>";

            Response.Write(alert);

        }

        protected void Btn_Pwd_Click(object sender, EventArgs e)
        {
            StudentView.Visible = false;
            Prof_Head.Text = "Change Password";

            Btn_Edit.Visible = false;
            Btn_Pwd.Visible = false;

            changepasswordpanel.Visible = true;


        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            sqlConnection = new SqlConnection(@"Data Source=sql.freeasphost.net\MSSQL2016;Initial Catalog=orange_SampleDB;User ID=orange_SampleDB;Password=DBSamplePW");
            sqlConnection.Open();

            //-------------ID------------------------

            /*string name2 = "Raja";

            string getID2 = "select SID from StudentMst where Name = '" + name2 + "'";

            SqlCommand cmd4 = new SqlCommand(getID2, sqlConnection);

            string id2 = cmd4.ExecuteScalar().ToString();*/

            string id2 = uid;

            string q_pwd = "select Password from StudentMst where SID = " + id2;

            SqlCommand cmd5 = new SqlCommand(q_pwd, sqlConnection);

            string mypwd = cmd5.ExecuteScalar().ToString();

            if (mypwd == Txt_CPWD.Text && Txt_NPWD.Text == Txt_RPWD.Text)
            {
                string q_update = "update StudentMst set Password = @pwd where SID = " + id2;

                SqlCommand cmd6 = new SqlCommand(q_update, sqlConnection);

                cmd6.Parameters.Add("@pwd", Txt_NPWD.Text);

                cmd6.ExecuteNonQuery();

                string alert = "<script>alert(\"Password updated successfully!!!\")</script>";

                Response.Write(alert);

                Response.Redirect("Stud_Profile.aspx");

            }
            else
            {
                string alert = "<script>alert(\"Invalid Credentials\")</script>";

                Response.Write(alert);

                //Response.Redirect("Stud_Profile.aspx");
            }



        }
    }
}