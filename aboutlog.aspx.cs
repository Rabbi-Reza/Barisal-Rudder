using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aboutlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {

            Response.Redirect("~/about.aspx");
        }
        else
        {

        }
    }


    protected void logout_Clickab(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/Demo.aspx");
    }
}