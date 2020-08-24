using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.IO;

public partial class PlaceViewSingle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["DID"] != null)
        {
            if (!IsPostBack)
            {
                bindImages();
                bindDetailes();
                bindFb();
            }
        }
        else
        {
            Response.Redirect("~/AllPlace.aspx");
        }
    }

    private void bindFb()
    {
        Int64 DID = Convert.ToInt64(Request.QueryString["DID"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from dataPlace where DID=" + DID + " ", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtall1 = new DataTable();
                    sda.Fill(dtall1);
                    rptrFb.DataSource = dtall1;
                    rptrFb.DataBind();
                }
            }
        }
    }

    private void bindDetailes()
    {
        Int64 DID = Convert.ToInt64(Request.QueryString["DID"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from dataPlace where DID=" + DID + " ", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtall1 = new DataTable();
                    sda.Fill(dtall1);
                    RepeaterResDet.DataSource = dtall1;
                    RepeaterResDet.DataBind();
                }
            }
        }

    }

    private void bindImages()
    {
        Int64 DID = Convert.ToInt64(Request.QueryString["DID"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from imagePl where DID=" + DID + " ", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtall1 = new DataTable();
                    sda.Fill(dtall1);
                    Repeaterimages.DataSource = dtall1;
                    Repeaterimages.DataBind();
                }
            }
        }
    }

    protected string getActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }
}
