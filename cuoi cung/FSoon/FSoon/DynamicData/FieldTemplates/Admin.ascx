<%@ Control Language="C#" CodeBehind="Admin.ascx.cs" Inherits="FSoon.DynamicData.FieldTemplates.Admin" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 311px;
    }
    .auto-style3 {
        width: 287px;
    }
    .auto-style4 {
        width: 311px;
        height: 25px;
    }
    .auto-style5 {
        width: 287px;
        height: 25px;
    }
    .auto-style6 {
        height: 25px;
    }
    .auto-style7 {
        width: 103px;
        text-align: left;
    }
    .auto-style8 {
        width: 103px;
        height: 23px;
        text-align: left;
    }
    .auto-style10 {
        width: 81px;
        text-align: left;
    }
    .auto-style11 {
        width: 81px;
        height: 29px;
        text-align: left;
    }
    .auto-style12 {
        height: 29px;
        text-align: left;
    }
    .auto-style13 {
        width: 87px;
        text-align: left;
    }
    .auto-style14 {
        width: 87px;
        height: 23px;
        text-align: left;
    }
    .auto-style15 {
        text-align: center;
    }
    .auto-style16 {
        text-align: left;
    }
    .auto-style17 {
        height: 23px;
        text-align: left;
    }
    .auto-style18 {
        width: 287px;
        text-align: center;
        height: 23px;
    }
    .auto-style19 {
        width: 311px;
        text-align: center;
        height: 23px;
    }
    .auto-style20 {
        width: 258px;
        text-align: center;
        height: 23px;
    }
    .auto-style21 {
        width: 258px;
        height: 25px;
    }
    .auto-style22 {
        width: 258px;
    }
    .auto-style23 {
        height: 23px;
        text-align: center;
    }
    .auto-style24 {
        width: 397px;
    }
</style>
<table class="auto-style1">
    <tr>
        <td class="auto-style20"><strong></strong></td>
        <td class="auto-style19"><strong>THÊM TÀI KHOẢN</strong></td>
        <td class="auto-style18"><strong>THÊM VÉ</strong></td>
        <td class="auto-style17"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THÊM FANSHOP</strong></td>
        <td class="auto-style23">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">
            &nbsp;</td>
        <td class="auto-style4">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">Tên tài khoản</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBoxTTK" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Mật khẩu</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxMK" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Loại tài khoản</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Email</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxE" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Thêm" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style5">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">Vị trí ghế</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxVTG" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Loại vé</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxLV" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Trạng thái</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Còn</asp:ListItem>
                            <asp:ListItem>Hết</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Giá vé</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxGV" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Thêm" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style6">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">Mã Fanshop</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBoxMFS" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Tên Fanshop</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxTFS" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Trạng thái</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxTT1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Số lượng</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxSL" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Giá Fanshop</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBoxGFS" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Thêm" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">
            &nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" ForeColor="#3399FF" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" ForeColor="#3399FF" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<table class="auto-style1" align="center">
    <tr>
        <td class="auto-style24">
            &nbsp;</td>
        <td class="auto-style15">
            <div class="auto-style15">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TENTK" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TENTK" HeaderText="TENTK" ReadOnly="True" SortExpression="TENTK" />
                    <asp:BoundField DataField="MATKHAU" HeaderText="MATKHAU" SortExpression="MATKHAU" />
                    <asp:BoundField DataField="LOAITK" HeaderText="LOAITK" SortExpression="LOAITK" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FSDATAConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [TAIKHOAN]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">
            &nbsp;</td>
        <td class="auto-style15">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">
            &nbsp;</td>
        <td class="auto-style15">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="VITRIGHE" DataSourceID="SqlDataSource2" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="VITRIGHE" HeaderText="VITRIGHE" ReadOnly="True" SortExpression="VITRIGHE" />
                    <asp:BoundField DataField="LOAIVE" HeaderText="LOAIVE" SortExpression="LOAIVE" />
                    <asp:BoundField DataField="TRANGTHAI" HeaderText="TRANGTHAI" SortExpression="TRANGTHAI" />
                    <asp:BoundField DataField="GIAVE" HeaderText="GIAVE" SortExpression="GIAVE" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FSDATAConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [VE]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">
            &nbsp;</td>
        <td class="auto-style15">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24">
            &nbsp;</td>
        <td class="auto-style15">
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MAFS" DataSourceID="SqlDataSource3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="MAFS" HeaderText="MAFS" ReadOnly="True" SortExpression="MAFS" />
                    <asp:BoundField DataField="TENFS" HeaderText="TENFS" SortExpression="TENFS" />
                    <asp:BoundField DataField="TRANGTHAI" HeaderText="TRANGTHAI" SortExpression="TRANGTHAI" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                    <asp:BoundField DataField="GIAFS" HeaderText="GIAFS" SortExpression="GIAFS" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FSDATAConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [FANSHOP]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

