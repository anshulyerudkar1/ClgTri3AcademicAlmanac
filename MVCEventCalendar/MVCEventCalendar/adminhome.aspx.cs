using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MVCEventCalendar
{
    public partial class adminhome : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lenovo\Downloads\MVCEventCalendar\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True");
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            query = "SELECT studentname, studentclass, rollno, year FROM student";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();

            query = "SELECT teachername, teacherclass, teacherpost FROM teacher";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(query, con);

            GridView2.DataSource = cmd1.ExecuteReader();
            GridView2.DataBind();
            con.Close();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            query = "SELECT * FROM student";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            con.Close();
        }





    }
}