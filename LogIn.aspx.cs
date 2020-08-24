using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["uname"] != null && Request.Cookies["upass"] != null)
            {
                username.Text = Request.Cookies["uname"].Value;
                userpass.Attributes["value"] = Request.Cookies["upass"].Value;
                remember.Checked = true;
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using(SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from UserInfo where Username='"+username.Text+"' and Password='"+userpass.Text+"'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (remember.Checked)
                {
                    Response.Cookies["uname"].Value = username.Text;
                    Response.Cookies["upass"].Value = userpass.Text;
                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["upass"].Expires = DateTime.Now.AddDays(10);

                }
                else
                {
                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["upass"].Expires = DateTime.Now.AddDays(-1);
                }
                string dtype;
                dtype = dt.Rows[0][5].ToString().Trim();
                if (dtype == "u")
                {
                    Session["username"] = username.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if (dtype == "a")
                {
                    Session["username"] = username.Text;
                    Response.Redirect("~/AdminPage.aspx");
                }
            }
            else
            {
                lblerr.ForeColor = Color.Red;
                lblerr.Text = "Invalid Username or Password";
            }
        }

    }
}