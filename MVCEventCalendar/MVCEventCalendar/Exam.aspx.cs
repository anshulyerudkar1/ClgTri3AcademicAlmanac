﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MVCEventCalendar
{
    public partial class exam : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True");
        string query;

        protected void Page_Load(object sender, EventArgs e)
        {
            query = "SELECT * FROM exam";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            query = "INSERT INTO exam VALUES (" + TextBox4.Text + " , ' " + TextBox2.Text + " ' ,' " + TextBox3.Text + " ', ' " + TextBox5.Text + " ',' " + TextBox6.Text + " ')";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
                Response.Write("Data Entered successsfully !");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            query = "SELECT * FROM exam";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            query = "SELECT * FROM exam";
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }

}