using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace FSoon.WebUserControl
{
    public partial class dangKiTK : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
                conn.Open();
                string checkur = "select count(*) from TAIKHOAN where TENTK ='" + txttentk.Text + "'";
                SqlCommand com = new SqlCommand(checkur, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already Exists");
                }
                conn.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into TAIKHOAN (TENTK, MATKHAU, LOAITK,EMAIL) values (@ten,@mk,@loai,@mail)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ten", txttentk.Text);
                com.Parameters.AddWithValue("@mk", txtmk.Text);
                com.Parameters.AddWithValue("@loai", 0);
                com.Parameters.AddWithValue("@mail", memail.Text);
                com.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Ðang kí thành công');</script>");
                conn.Close();
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Đăng kí không thành công');</script>");
            }
        }
    }
}