using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace fs.WebUserControl
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
            conn2.Open();
            string checkur2 = "select count(*) from MUAVE where TENTK ='" + Session["New"] + "'";

            SqlCommand com2 = new SqlCommand(checkur2, conn2);

            int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());
            if (temp2==1)
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else MultiView1.ActiveViewIndex = 0;
            /*if (Session["Tam"] == null)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else MultiView1.ActiveViewIndex = 1;*/
            conn2.Close();
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
                conn.Open();
                string checkur = "select count(*) from MUAVE where VITRIGHE ='" + TextBoxVTG0.Text + "'";
         
                SqlCommand com = new SqlCommand(checkur, conn);
               
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
              
                if (temp == 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Ghế đã được người khác đăng kí');</script>");
                    Response.Write("Number already Exists");
                }
                string checkur1 = "select count(*) from MUAVE where TENTK ='" + Session["New"] + "'";
                SqlCommand com1 = new SqlCommand(checkur1, conn);
                int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp1 == 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Mỗi tài khoản chỉ được mua một vé');</script>");
                    Response.Write("Mỗi tài khoản chỉ được mua 1 vé");
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
                string insertQuery = "insert into MUAVE (TENTK,TEN,GIOITINH,TUOI,CMND,DIACHI,SDT,VITRIGHE,FANSHOP,NOINHANVE,THANHTOAN) " +
                                                "values (@ten,@ht,@gt,@t,@cmnd,@dc,@sdt,@vtg,@fs,@nnv,@tt)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ten", Session["New"].ToString());
                com.Parameters.AddWithValue("@ht", TextBoxHoten0.Text);
                com.Parameters.AddWithValue("@gt", DropDownList2.SelectedItem.ToString());
                com.Parameters.AddWithValue("@t", Convert.ToInt32(TextBoxNgaySinh0.Text.ToString()));
                com.Parameters.AddWithValue("@cmnd", TextBoxCMND0.Text);
                com.Parameters.AddWithValue("@dc", TextBoxDC0.Text);
                com.Parameters.AddWithValue("@sdt", TextBoxSDT0.Text);
                com.Parameters.AddWithValue("@vtg", TextBoxVTG0.Text);
                com.Parameters.AddWithValue("@fs", CheckBox2.Checked.ToString());
                com.Parameters.AddWithValue("@nnv", TextBoxNNV0.Text);
                com.Parameters.AddWithValue("@tt", TextBoxTT0.Text);
                com.ExecuteNonQuery();
                Session["Tam"] = 1;
                MultiView1.ActiveViewIndex = 1;
                Response.Redirect(Request.RawUrl);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Ðang kí mua vé thành công');</script>");
                conn.Close();
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('Đăng kí mua vé không thành công');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FSDATAConnectionString"].ConnectionString);
            conn.Open();
            string deleteQuery = "delete from MUAVE where TENTK ='" + Session["New"].ToString() + "'";
            SqlCommand com = new SqlCommand(deleteQuery, conn);
            com.ExecuteNonQuery();
            MultiView1.ActiveViewIndex = 0;
            Response.Redirect(Request.RawUrl);
            conn.Close();
        }
    }
}