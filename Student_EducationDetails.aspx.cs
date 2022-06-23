using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace Orange_Project
{
    public partial class Student_EducationDetails : System.Web.UI.Page
    {
        SqlConnection sqlConnection;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=CampusSelection;Integrated Security=True;MultipleActiveResultSets=True");
            sqlConnection.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            string typeName = FileUpload1.PostedFile.ContentType;
            string filePath = FileUpload1.PostedFile.FileName; // getting the file path of uploaded file  
            string filename1 = Path.GetFileName(filePath); // getting the file name of uploaded file  
            string ext = Path.GetExtension(filename1); // getting the file extension of uploaded file  
            string type = String.Empty;
            if (!FileUpload1.HasFile)
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "*Please Select File"; //if file uploader has no file selected  
            }
            else
            if (FileUpload1.HasFile)
            {
                try
                {
                    switch (ext) // this switch code validate the files which allow to upload only PDF file   
                    {
                        case ".pdf":
                            type = "application/pdf";
                            break;
                    }
                    if (type != String.Empty)
                    {

                        Stream fs = FileUpload1.PostedFile.InputStream;

                        BinaryReader br = new BinaryReader(fs); //reads the binary files  
                        Byte[] bytes = br.ReadBytes((Int32)fs.Length); //counting the file length into bytes  
                        string query = "insert into ResumeMst values (@id, @data)"; //insert query  
                        com = new SqlCommand(query, sqlConnection);
                        com.Parameters.Add("@id", int.Parse(Session["uid"].ToString()));
                        //com.Parameters.Add("@data", bytes);
                        //com.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                        com.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                        com.ExecuteNonQuery();
                        Label2.ForeColor = System.Drawing.Color.Green;
                        Label2.Text = "File Uploaded Successfully" + typeName;
                        string college_name = Txt_collegename.Text;
                        string roll_no = Txt_enrollno.Text;
                        string semester = DropDown_semester.Text;
                        string degree = DropDown_degree.Text;
                        string branch = DropDown_branch.Text;
                        string pass_year = DropDown_passingyear.Text;
                        string cgpa = Txt_cgpa.Text;
                        string skill = DropDown_skill.Text;



                        string insert = "insert into EducationMst values (@id,@cname,@rno,@sem,@deg,@branch,@pass,@cgpa,@skill)";




                        SqlCommand cmd = new SqlCommand(insert, sqlConnection);



                        cmd.Parameters.Add("@id", Session["uid"].ToString());
                        cmd.Parameters.Add("@cname", college_name);
                        cmd.Parameters.Add("@rno", roll_no);
                        cmd.Parameters.Add("@sem", semester);
                        cmd.Parameters.Add("@deg", degree);
                        cmd.Parameters.Add("@branch", branch);
                        cmd.Parameters.Add("@pass", pass_year);
                        cmd.Parameters.Add("@cgpa", cgpa);
                        cmd.Parameters.Add("@skill", skill);



                        cmd.ExecuteNonQuery();

                        Response.Redirect("Student_Dashboard.aspx");
                    }
                    else
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;
                        Label2.Text = "Select Only PDF Files "; // if file is other than speified extension   
                    }
                }
                catch (Exception ex)
                {
                    Label2.Text = "Error: " + ex.Message.ToString();
                }
            }

            


        }
    }
}