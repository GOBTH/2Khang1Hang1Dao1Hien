﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMenuNgang.ascx.cs" Inherits="Miu_sit.WebUserControl.wucMenuNgang" %>
<asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSourceFrontEnd" Height="20px" Orientation="Horizontal" StaticDisplayLevels="2" Width="500px">
</asp:Menu>
<asp:SiteMapDataSource ID="SiteMapDataSourceFrontEnd" runat="server" />