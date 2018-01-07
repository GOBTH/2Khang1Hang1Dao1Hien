<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DSDK.aspx.cs" Inherits="FSoon.DSDK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FSDATAConnectionString %>" SelectCommand="SELECT * FROM [MUAVE]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TENTK,VITRIGHE" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="TENTK" HeaderText="TENTK" ReadOnly="True" SortExpression="TENTK" />
                    <asp:BoundField DataField="VITRIGHE" HeaderText="VITRIGHE" ReadOnly="True" SortExpression="VITRIGHE" />
                    <asp:BoundField DataField="FANSHOP" HeaderText="FANSHOP" SortExpression="FANSHOP" />
                    <asp:BoundField DataField="NOINHANVE" HeaderText="NOINHANVE" SortExpression="NOINHANVE" />
                    <asp:BoundField DataField="THANHTOAN" HeaderText="THANHTOAN" SortExpression="THANHTOAN" />
                    <asp:BoundField DataField="TEN" HeaderText="TEN" SortExpression="TEN" />
                    <asp:BoundField DataField="GIOITINH" HeaderText="GIOITINH" SortExpression="GIOITINH" />
                    <asp:BoundField DataField="TUOI" HeaderText="TUOI" SortExpression="TUOI" />
                    <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
                    <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
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
    </form>
</body>
</html>
