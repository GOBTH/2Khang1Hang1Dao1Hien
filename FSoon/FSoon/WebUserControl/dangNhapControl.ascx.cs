using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FSoon.WebUserControl
{
    public partial class dangNhapControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
            conn.Open();
            string checkur = "select count(*) from TAIKHOAN where TENTK ='" + txtTenDN.Text + "'";
            SqlCommand com = new SqlCommand(checkur, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select MATKHAU from TAIKHOAN where TENTK ='" + txtTenDN.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                string password = passCom.ExecuteScalar().ToString().Replace(" ", " ");
                if (password == txtMK.Text)
                {
                    Session["New"] = txtTenDN.Text;
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Đăng nhập thành công!');</script>");
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Mật khẩu không đúng!');</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Tên đăng nhập không đúng!');</script>");
            }
        }
    }
}