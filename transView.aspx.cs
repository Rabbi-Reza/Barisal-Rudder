using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transView : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["tId"] != null)
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
            Response.Redirect("~/Alltransport.aspx");
        }
    }

    private void bindFb()
    {
        Int64 tId = Convert.ToInt64(Request.QueryString["tId"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from transport where tId=" + tId+ " ", con))
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
        Int64 tId = Convert.ToInt64(Request.QueryString["tId"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from transport where tId=" + tId + " ", con))
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
        Int64 tId = Convert.ToInt64(Request.QueryString["tId"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from transportimage where tId=" + tId + " ", con))
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
