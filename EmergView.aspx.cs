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

public partial class EmergView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["EId"] != null)
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
            Response.Redirect("~/AllEmerg.aspx");
        }
    }

    private void bindFb()
    {
        Int64 EId = Convert.ToInt64(Request.QueryString["EId"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from TblEmg where EId=" + EId + " ", con))
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
        Int64 EId = Convert.ToInt64(Request.QueryString["EId"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from TblEmg where EId=" + EId + " ", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtall1 = new DataTable();
                    sda.Fill(dtall1);
                    RepeaterEmergDet.DataSource = dtall1;
                    RepeaterEmergDet.DataBind();
                }
            }
        }
        
    }

    private void bindImages()
    {
        Int64 EId = Convert.ToInt64(Request.QueryString["EId"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from TblImg where EId=" + EId + " ", con))
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

    
