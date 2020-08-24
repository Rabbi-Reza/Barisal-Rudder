using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
           // Lblsucc.Text = "Login Success...!! Welcome " + Session["username"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/LogIn.aspx");
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/Demo.aspx");
    }
}