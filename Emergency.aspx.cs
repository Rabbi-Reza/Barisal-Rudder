using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Data;
using System.IO;

public partial class Emergency : System.Web.UI.Page
{

    public string Extension { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String CS = System.Configuration.ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertEMg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EName", txtename.Text);
            cmd.Parameters.AddWithValue("@ELocation", txtelocation.Text);
            cmd.Parameters.AddWithValue("@EContact", txtecontact.Text);

            con.Open();
            Int64 EId = Convert.ToInt64(cmd.ExecuteScalar());

            //Insert image
            if (im1.HasFile)
            {
                string savePath = Server.MapPath("~Images/EmerImages/") + EId; 
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(im1.PostedFile.FileName);
                    im1.SaveAs(savePath + "\\" + txtename.Text.ToString().Trim() + "01" + extension);

                    SqlCommand cmd2 = new SqlCommand("insert into TblImg values ('" + EId + "', '" + txtename.Text.ToString().Trim() + "01" + "','" + extension + "')", con);
                    cmd2.ExecuteNonQuery();
                }
                if (im2.HasFile)
                {
                    string savePath = Server.MapPath("~Images/EmerImages/") + EId;
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(im2.PostedFile.FileName);
                    im2.SaveAs(savePath + "\\" + txtename.Text.ToString().Trim() + "02" + extension);

                    SqlCommand cmd3 = new SqlCommand("insert into TblImg values ('" + EId + "', '" + txtename.Text.ToString().Trim() + "02" + "','" + extension + "')", con);
                    cmd3.ExecuteNonQuery();
                }

            }

        }
    }

