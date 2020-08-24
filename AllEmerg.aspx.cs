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


public partial class AllEmerg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindEmerg();
        }
    }
    private void bindEmerg()
    {

        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("procBindAllEmerg", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtall1 = new DataTable();
                    sda.Fill(dtall1);
                    RepeaterEmerg.DataSource = dtall1;
                    RepeaterEmerg.DataBind();

                }
            }
        }
    }
}