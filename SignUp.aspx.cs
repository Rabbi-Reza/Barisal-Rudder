using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bsign_Click(object sender, EventArgs e)
    {
        if (name.Text != "" && mail.Text != "" && pass.Text != "" && cont.Text != "")
        {
            if (pass.Text == cpass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into UserInfo values ('" + name.Text + "','" + mail.Text + "','" + pass.Text + "','" + cont.Text + "','u')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    valid.ForeColor = Color.Green;
                    valid.Text = "Registration DONE..Welcome "+name.Text;
                    Response.Redirect("~/LogIn.aspx");
                }
            }
            else
            {
                valid.ForeColor = Color.Red;
                valid.Text = "Passwords Not Matched..!!";
            }
        }
        else
        {
            valid.ForeColor = Color.Red;
            valid.Text = "You Must Fill Up ALL the Fields";
        }
    }
}