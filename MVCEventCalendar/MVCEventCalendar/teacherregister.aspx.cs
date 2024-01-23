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
    public partial class teacherregister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True");
        string query;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            query = "INSERT INTO teacher VALUES (" + Txt1.Text.Trim() + ",' " + Txt2.Text.Trim() + " ' ,' " + Txt3.Text.Trim() + " ' , ' " + Txt4.Text.Trim() + " ',  ' " + Txt5.Text.Trim() + " ' ,  ' " + Txt6.Text.Trim() + " ')";
            con.Open();
            
            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
                Response.Write("Teacher Added Successfully");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            query = "SELECT * FROM teacher";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label teacherid = GridView1.Rows[e.RowIndex].FindControl("Label7") as Label;
            TextBox teachername = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox teacherclass = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox teacherpost = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox teacheremail = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox tpass = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lenovo\Downloads\MVCEventCalendar\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True";
            String updatedata = "UPDATE teacher SET teachername = '" + teachername.Text + "',teacherclass= '" + teacherclass.Text + "',teacherpost= '" + teacherpost.Text + "',teacheremail= '" + teacheremail.Text + "',teachpassword= '" + tpass.Text + "'  WHERE teacherid= " + teacherid.Text + ";";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label teacherid = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lenovo\Downloads\MVCEventCalendar\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True";
            String updatedata = "delete from teacher where teacherid =" + teacherid.Text + ";";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}