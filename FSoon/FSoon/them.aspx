<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="them.aspx.cs" Inherits="FSoon.them" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSourceFSDATA" runat="server" ConnectionString="<%$ ConnectionStrings:FSDATAConnectionString %>" SelectCommand="SELECT * FROM [TAIKHOAN]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TENTK" DataSourceID="SqlDataSourceFSDATA">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TENTK" HeaderText="TENTK" ReadOnly="True" SortExpression="TENTK" />
                    <asp:BoundField DataField="MATKHAU" HeaderText="MATKHAU" SortExpression="MATKHAU" />
                    <asp:BoundField DataField="LOAITK" HeaderText="LOAITK" SortExpression="LOAITK" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
