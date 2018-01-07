using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;
using System.Data.SqlClient;

namespace FSoon.DynamicData.FieldTemplates
{
    public partial class Admin : System.Web.DynamicData.FieldTemplateUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
                conn.Open();
                string checkur = "select count(*) from TAIKHOAN where TENTK ='" + TextBoxTTK.Text + "'";
                SqlCommand com = new SqlCommand(checkur, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Label1.Visible = true;
                    Label1.Text = "Tên tài khoản đã có người sử dụng";
                }
                string checkur1 = "select count(*) from VE where VITRIGHE ='" + TextBoxVTG.Text + "'";
                SqlCommand com1 = new SqlCommand(checkur1, conn);
                int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp1 == 1)
                {
                    Label2.Visible = true;
                    Label2.Text = "Vé đã tồn tại";
                }
                string checkur2 = "select count(*) from FANSHOP where MAFS ='" + TextBoxMFS.Text + "'";
                SqlCommand com2 = new SqlCommand(checkur2, conn);
                int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());
                if (temp2 == 1)
                {
                    Label2.Visible = true;
                    Label2.Text = "Fanshop đã tồn tại";
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
                com.Parameters.AddWithValue("@ten", TextBoxTTK.Text);
                com.Parameters.AddWithValue("@mk", TextBoxMK.Text);
                com.Parameters.AddWithValue("@loai", Convert.ToInt32(DropDownList1.SelectedItem.Text.ToString()));
                com.Parameters.AddWithValue("@mail", TextBoxE.Text);
                com.ExecuteNonQuery();
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Ðang kí thành công');</script>");
                Label1.Visible = true;
                Label1.Text = "Thêm tài khoản thành công";
                conn.Close();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Đăng kí không thành công');</script>");
                Label1.Visible = true;
                Label1.Text = "Thêm tài khoản thất bại";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into VE (VITRIGHE, LOAIVE, TRANGTHAI,GIAVE) values (@ten,@mk,@loai,@mail)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ten", TextBoxVTG.Text);
                com.Parameters.AddWithValue("@mk", TextBoxLV.Text);
                com.Parameters.AddWithValue("@loai",DropDownList2.SelectedItem.ToString());
                com.Parameters.AddWithValue("@mail", Convert.ToInt32(TextBoxGV.Text.ToString()));
                com.ExecuteNonQuery();
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Ðang kí thành công');</script>");
                Label1.Visible = true;
                Label1.Text = "Thêm vé mới thành công";
                conn.Close();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Đăng kí không thành công');</script>");
                Label1.Visible = true;
                Label1.Text = "Thêm vé mới thất bại";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into FANSHOP (MAFS, TENFS, TRANGTHAI,SOLUONG,GIAFS) values (@ten,@mk,@loai,@mail,@gia)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ten", TextBoxMFS.Text);
                com.Parameters.AddWithValue("@mk", TextBoxTFS.Text);
                com.Parameters.AddWithValue("@loai", Convert.ToInt32(TextBoxTT1.Text.ToString()));
                com.Parameters.AddWithValue("@mail", Convert.ToInt32(TextBoxSL.Text.ToString()));
                com.Parameters.AddWithValue("@mail", Convert.ToInt32(TextBoxGFS.Text.ToString()));
                com.ExecuteNonQuery();
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Ðang kí thành công');</script>");
                Label1.Visible = true;
                Label1.Text = "Thêm fanshop mới thành công";
                conn.Close();
                GridView3.DataBind();
            }
            catch (Exception ex)
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Đăng kí không thành công');</script>");
                Label1.Visible = true;
                Label1.Text = "Thêm fanshop mới thất bại";
            }
        }
    }
}
