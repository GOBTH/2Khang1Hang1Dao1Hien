<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="dangKiTK.aspx.cs" Inherits="fs.WebForm1" %>
<%@ Register src="WebUserControl/WebUserControl2.ascx" tagname="WebUserControl2" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:WebUserControl2 ID="WebUserControl21" runat="server" />
</asp:Content>
