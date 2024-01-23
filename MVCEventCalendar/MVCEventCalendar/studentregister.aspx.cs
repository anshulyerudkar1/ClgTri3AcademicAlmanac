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
    public partial class studentregister : System.Web.UI.Page
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

        protected void submit_Click(object sender, EventArgs e)
        {
            query = "INSERT INTO student VALUES (" + Txt1.Text + ",' " + Txt2.Text + " ' ,' " + Txt3.Text + " ' , ' " + Txt4.Text + " ' ,' " + Txt5.Text + " ' , ' " + Txt6.Text + " ' , ' " + Txt7.Text + " ' )";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
                Response.Write("Database created");
            con.Close();
        }

        protected void retrieve_Click(object sender, EventArgs e)
        {
            query = "SELECT * FROM student";
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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label teacherid = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            //String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\lenovo\Downloads\MVCEventCalendar\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True";
            String updatedata = "delete from stuedent where studentid =" + teacherid.Text + ";";
            //SqlConnection con = new SqlConnection(mycon);
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            
        }
    }
}