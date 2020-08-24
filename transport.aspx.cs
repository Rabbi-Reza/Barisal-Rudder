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
public partial class transport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        String CS = System.Configuration.ConfigurationManager.ConnectionStrings["UserConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertInfo", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Address", address.Text);
            cmd.Parameters.AddWithValue("@Description", descript.Text);

           con.Open();
          Int64 tId = Convert.ToInt64(cmd.ExecuteScalar());
            //image inserting
          if (im1.HasFile)
          {
              string savePath = Server.MapPath("~Images/transport/") + tId;
              if (!Directory.Exists(savePath))
              {
                  Directory.CreateDirectory(savePath);
              }
              string extension = Path.GetExtension(im1.PostedFile.FileName);
              im1.SaveAs(savePath + "\\" + address.Text.ToString().Trim() + "01" + extension);

              SqlCommand cmd2 = new SqlCommand("insert into transportimage  values ('" + tId + "', '" + address.Text.ToString().Trim() + "01" + "','" + extension + "')", con);
              cmd2.ExecuteNonQuery();
          }
          if (im2.HasFile)
          {
              string savePath = Server.MapPath("~Images/transport/") + tId;
              if (!Directory.Exists(savePath))
              {
                  Directory.CreateDirectory(savePath);
              }
              string extension = Path.GetExtension(im2.PostedFile.FileName);
              im2.SaveAs(savePath + "\\" + address.Text.ToString().Trim() + "02" + extension);

              SqlCommand cmd3 = new SqlCommand("insert into transportimage values ('" + tId+ "', '" + address.Text.ToString().Trim() + "02" + "','" + extension + "')", con);
              cmd3.ExecuteNonQuery();
          }

        }
    }


}
