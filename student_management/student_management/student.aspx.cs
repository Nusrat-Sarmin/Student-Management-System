using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_management
{
    public partial class student : System.Web.UI.Page
    {
        Class1 db = new Class1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                LoadGrid();
            }

        }

       public void LoadGrid()
        {
            string query = @"SELECT [student_id]
      ,[student_name]
      ,[c_id]
      ,[email]
      ,[phone]
  FROM [dbo].[students]";
            GridView1.DataSource = db.GetData(query);
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[students]
           ([student_id]
           ,[student_name]
           ,[c_id]
           ,[email]
           ,[phone])
     VALUES('"+student_id.Text+"','" + student_name.Text+ "','" + c_id.Text + "','" + email.Text + "','" + phone.Text + "') ";
            if (db.ExecuteQuery(query)==1) {
                LoadGrid();
            }
        }
    }
}