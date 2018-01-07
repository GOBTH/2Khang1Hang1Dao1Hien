using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FSoon
{
    public partial class BackEnd : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_DXuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangNhap.aspx");
        }
    }
}