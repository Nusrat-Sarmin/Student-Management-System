using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_management
{
    public partial class teacher : System.Web.UI.Page
    {
        Class1 db = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (!Page.IsPostBack)
                {
                    LoadGrid();
                }

        }
            public void LoadGrid()
            {
                string query = @"SELECT [teacher_id]
                               ,[teacher_name]
                             FROM [dbo].[teacher]";
                GridView1.DataSource = db.GetData(query);
                GridView1.DataBind();
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @" INSERT INTO [dbo].[teacher]
           ([teacher_id]
           ,[teacher_name])
            VALUES('" + teacher_id.Text + "','" + teacher_name.Text + "')";
            if (db.ExecuteQuery(query) == 1)
            {
                LoadGrid();
            }
        }
    }
  }
