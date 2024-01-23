using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace MVCEventCalendar
{
    public partial class thome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True");
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            query = "SELECT studentname, studentclass, rollno, year FROM student";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

 

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["teacheremail"] = null;
            Session["tpass"] = null;

            Response.Redirect("index.aspx");
        }

       
    }
}