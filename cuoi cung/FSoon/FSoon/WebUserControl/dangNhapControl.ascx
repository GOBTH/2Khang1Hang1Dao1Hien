<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dangNhapControl.ascx.cs" Inherits="FSoon.WebUserControl.dangNhapControl" %>
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 482px;
            text-align: right;
        }
        .auto-style3 {
            width: 32px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 266px;
        }
        </style>

    <table class="auto-style1" style="border-style: solid; border-color: #3399FF; padding: 0px; margin: 0px;">
        <tr>
            <td class="auto-style7" colspan="4" style="background-color: #3399FF; font-weight: bold; color: #FFFFFF">ĐĂNG NHẬP</td>
        </tr>
        <tr>
            <td class="auto-style2">Tên Đăng Nhập</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTenDN" runat="server" Width="230px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Yêu cầu nhập tên tài khoản" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mật Khẩu</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMK" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMK" ErrorMessage="Yêu cầu nhập mật khẩu" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="4">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="btnDNhap" runat="server" OnClick="Button1_Click" Text="Đăng Nhập" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/dangKiTK.aspx">Đăng Kí Tài Khoản</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="4"><em>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Lỗi" />
                </em></td>
        </tr>
</table>