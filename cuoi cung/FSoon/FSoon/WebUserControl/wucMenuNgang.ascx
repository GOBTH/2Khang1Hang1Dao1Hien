<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMenuNgang.ascx.cs" Inherits="FSoon.WebUserControl.wucMenuNgang" %>
<asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSourceFSDATA" Orientation="Horizontal" StaticDisplayLevels="2" Width="1300px">
    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#FFFBD6" />
    <DynamicSelectedStyle BackColor="#FFCC66" />
    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#FFCC66" />
</asp:Menu>
<asp:SiteMapDataSource ID="SiteMapDataSourceFSDATA" runat="server" />

