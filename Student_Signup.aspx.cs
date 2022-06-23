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
    public partial class Student_Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_continue_Click(object sender, EventArgs e)
        {
            SqlConnection             con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");

            con.Open();

            string q = "insert into StudentMst(name,address,city,state,pincode,dob,gender,mobileno,email,username,password) values(@name,@address,@city,@state,@pincode,@dob,@gender,@mobileno,@email,@username,@password)";

            SqlCommand cmd = new SqlCommand(q, con);

            string gendervalue = "male";

            if (Radio_female.Checked == true)
            {
                gendervalue = "female";
            }

            cmd.Parameters.Add("@name", Session["name"].ToString());
            cmd.Parameters.Add("@username", Session["username"].ToString());
            cmd.Parameters.Add("@password", Session["password"].ToString());
            cmd.Parameters.Add("@email", Session["email"].ToString());
            cmd.Parameters.Add("@mobileno", Session["mobileno"].ToString());
            cmd.Parameters.Add("@address", Txt_address.Text);
            cmd.Parameters.Add("@city", Txt_city.Text);
            cmd.Parameters.Add("@state", Txt_state.Text);
            cmd.Parameters.Add("@pincode", Txt_pincode.Text);
            cmd.Parameters.Add("@dob", Txt_birthdate.Text);
            cmd.Parameters.Add("@gender", gendervalue);

            cmd.ExecuteNonQuery();

            cmd = new SqlCommand("Select Max(SID) from StudentMst", con);
            string sid = cmd.ExecuteScalar().ToString();
            Session["uid"] = sid;

            Response.Redirect("Student_EducationDetails.aspx");



        }

    }
}