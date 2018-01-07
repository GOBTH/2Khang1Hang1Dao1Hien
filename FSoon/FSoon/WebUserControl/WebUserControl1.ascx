<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="fs.WebUserControl.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        height: 30px;
    }
    .auto-style3 {
        height: 28px;
    }
</style>
&nbsp;<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <br />
        <h1>Đăng kí mua vé</h1>
        <fieldset>
            <legend style="width: 54px">Đăng kí</legend>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Tên tài khoản:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBoxTTK0" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Họ tên:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxHoten0" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Gioi tính:</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px">
                            <asp:ListItem>Nam</asp:ListItem>
                            <asp:ListItem>Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Tuổi</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxNgaySinh0" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">CMND:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBoxCMND0" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxCMND0" ErrorMessage="CMND không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Địa chỉ:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBoxDC0" runat="server" Height="58px" Width="186px"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxDC0" ErrorMessage="Địa chỉ không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">SĐT:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBoxSDT0" runat="server" Width="184px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxSDT0" ErrorMessage="Không được để trống số điện thoại" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Vị trí ghế:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxVTG0" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxVTG0" ErrorMessage="Vị trí ghế không được để trống hoặc đã có người đăng kí" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Fanshop:</td>
                    <td class="auto-style5">
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Mua" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">Noi nhận vé</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBoxNNV0" runat="server" Height="56px" Width="184px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxNNV0" ErrorMessage="Nơi nhận vé không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Thanh toán:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxTT0" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxTT0" ErrorMessage="Thanh toán không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Đăng kí" />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </fieldset><br />
        <br />
    </asp:View>
    <asp:View ID="View2" runat="server">
        Tài khoản này đã đặt vé. Bạn có muốn huỷ vé mình đã đặt<br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
    </asp:View>
    <br />
    <br />
</asp:MultiView>
