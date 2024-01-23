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
    public partial class sforgotpass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\MVCEventCalendar\MVCEventCalendar\App_Data\almanac.mdf;Integrated Security=True");
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int len = args.Value.Length;
            if (len >= 8 && len <= 15)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            qry = "UPDATE student SET spass = '" + TextBox2.Text.Trim() + "' WHERE studentid= " + TextBox1.Text + ";";
            con.Open();
            SqlCommand cmd = new SqlCommand(qry,con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
                Response.Redirect("slogin.aspx");
            con.Close();
        }
    }
}