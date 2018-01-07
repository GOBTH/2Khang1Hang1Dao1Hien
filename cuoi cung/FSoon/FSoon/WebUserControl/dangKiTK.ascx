<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dangKiTK.ascx.cs" Inherits="FSoon.WebUserControl.dangKiTK" %>
<style type="text/css">
    {
        width: 100%;
    }
    .auto-style5 {
        text-align: center;
    }
    .auto-style7 {
        width: 32%;
    }
    .auto-style8 {
        width: 3%;
    }
    .auto-style11 {
        width: 491px;
    }
    .auto-style12 {
        width: 43%;
    }
    .auto-style13 {
        text-align: left;
    }
    .auto-style14 {
        width: 32%;
        height: 26px;
    }
    .auto-style15 {
        width: 3%;
        height: 26px;
    }
    .auto-style16 {
        width: 491px;
        height: 26px;
    }
    .auto-style17 {
        width: 43%;
        height: 26px;
    }
</style>

<table cellpading="5" cellpading="0" class="auto-style1" style="padding: 0px; border-style: solid; border-color: #66CCFF;">
    <tr>
        <td colspan="4" dir="auto" style="background-color: #66CCFF; font-weight: bold; color: #FFFFFF" class="auto-style5">ĐĂNG KÍ TÀI KHOẢN&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14" dir="rtl">Tên tài khoản</td>
        <td class="auto-style15"></td>
        <td class="auto-style16">
            <asp:TextBox ID="txttentk" runat="server" Width="230px"></asp:TextBox>
        </td>
        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttentk" ErrorMessage="Yêu cầu nhập tên tài khoản" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" dir="rtl">Mật khẩu</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtmk" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmk" ErrorMessage="Yêu cầu nhập mật khẩu" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" dir="rtl">Nhập lại mật khẩu</td>
        <td class="auto-style15"></td>
        <td class="auto-style16">
            <asp:TextBox ID="txtnhaplaimk" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnhaplaimk" ErrorMessage="Yêu cầu nhập lại mật khẩu" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cmpnhaplaimk" runat="server" ControlToCompare="txtmk" ControlToValidate="txtnhaplaimk" ErrorMessage="Mật khẩu không trùng với mật khẩu ban đầu" ForeColor="Red">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" dir="rtl">Email</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style11">
            <asp:TextBox ID="memail" runat="server" Width="230px" TextMode="Email" Height="22px"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="memail" ErrorMessage="Yêu cầu nhập email" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="reEmail" runat="server" ControlToValidate="memail" ErrorMessage="Email không đúng định dạng" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="4" dir="rtl">
            <asp:Button ID="btnDKi" runat="server" OnClick="Button1_Click" Text="Đăng kí" Width="111px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="4" dir="rtl">
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" BorderColor="#CCCCCC" NavigateUrl="~/dangNhap.aspx">Trở lại Đăng nhập</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" colspan="4" dir="rtl">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style1" DisplayMode="List" Font-Italic="True" ForeColor="Red" HeaderText="Lỗi nhập liệu" />
        </td>
    </tr>
</table>