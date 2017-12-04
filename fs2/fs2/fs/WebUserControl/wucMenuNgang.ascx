<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMenuNgang.ascx.cs" Inherits="Miu_sit.WebUserControl.wucMenuNgang" %>
<%@ Register src="DangNhap.ascx" tagname="DangNhap" tagprefix="uc1" %>
<asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSourceFrontEnd" Height="20px" Orientation="Horizontal" StaticDisplayLevels="2" Width="500px" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#FFFBD6" />
    <DynamicSelectedStyle BackColor="#FFCC66" />
    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#FFCC66" />
</asp:Menu>

<asp:SiteMapDataSource ID="SiteMapDataSourceFrontEnd" runat="server" />
