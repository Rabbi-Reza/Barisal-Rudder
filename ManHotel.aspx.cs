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
public partial class ManHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if (!Page.IsPostBack)
        //{
        //     SqlDataSource1.DataBind();
        //     GridView1.DataBind();
        // }
        // if (!IsPostBack)
        // {
        //  bindRpter();
        // }

    }

    private void bindRpter()
    {
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            // using (SqlCommand cmd9 = new SqlCommand("select * from dataTable", con))
            //  {
            //using (SqlDataAdapter sda = new SqlDataAdapter(cmd9))
            //  {
            // DataTable dtall = new DataTable();
            //sda.Fill(dtall);
            //dataRpt.DataSource = dtall;
            // dataRpt.DataBind();
            //  }
            //}
        }
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertDataHt", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@type", typ.Text);
            cmd.Parameters.AddWithValue("@name", nam.Text);
            cmd.Parameters.AddWithValue("@location", loc.Text);
            cmd.Parameters.AddWithValue("@contact", cont.Text);
            cmd.Parameters.AddWithValue("@description", des.Text);


            con.Open();
            Int64 DID = Convert.ToInt64(cmd.ExecuteScalar());

            //insert images
            if (im1.HasFile)
            {
                string savePath = Server.MapPath("~Images/DataHotel/") + DID;
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extension = Path.GetExtension(im1.PostedFile.FileName);
                im1.SaveAs(savePath + "\\" + nam.Text.ToString().Trim() + "01" + extension);

                SqlCommand cmd2 = new SqlCommand("insert into imageHt values ('" + DID + "', '" + nam.Text.ToString().Trim() + "01" + "','" + extension + "')", con);
                cmd2.ExecuteNonQuery();
            }
            if (im2.HasFile)
            {
                string savePath = Server.MapPath("~Images/DataHotel/") + DID;
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extension = Path.GetExtension(im2.PostedFile.FileName);
                im2.SaveAs(savePath + "\\" + nam.Text.ToString().Trim() + "02" + extension);

                SqlCommand cmd3 = new SqlCommand("insert into imageHt values ('" + DID + "', '" + nam.Text.ToString().Trim() + "02" + "','" + extension + "')", con);
                cmd3.ExecuteNonQuery();
            }

        }
    }


}