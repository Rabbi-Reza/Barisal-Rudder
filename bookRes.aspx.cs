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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindDate();
            bindTime();
            bindTable();
        }
        if (Session["username"] == null)
        {
            Response.Redirect("~/LogIn.aspx");

        }
        else
        {
           // Response.Redirect("~/bookRes.aspx");
        }

    }

    private void bindTable()
    {
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from resTableNo", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "rTableNo";
                DropDownList2.DataValueField = "rNoID";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
            }
        }
    }

    private void bindTime()
    {
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from restimeGap", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "rTimeGap";
                DropDownList1.DataValueField = "rTimeid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            }
        }
    }

    private void bindDate()
    {
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from resDate", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                date.DataSource = dt;
                date.DataTextField = "reDate";
                date.DataValueField = "rID";
                date.DataBind();
                date.Items.Insert(0, new ListItem("--Select--", "0"));
            }
        }
    }

    protected void btnbook_Click(object sender, EventArgs e)
    {
        Int64 DID = Convert.ToInt64(Request.QueryString["DID"]);
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from resBook where rStatus='a' and DID=" + DID + "", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                ShowMessage("Table Not AVAILABLE..!!");
            }
            else
            {
                SqlCommand cmd1 = new SqlCommand("update resbook set rStatus='b' where DID='" + DID + "'", con);
                //con.Open();
                cmd1.ExecuteNonQuery();
                ShowMessage("Table BOOKED..!!");
            }
        }
    }

        void ShowMessage(string msg)  
        {  
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");  
        }

}