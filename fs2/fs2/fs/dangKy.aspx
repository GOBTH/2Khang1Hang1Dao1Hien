<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="dangKy.aspx.cs" Inherits="Miu_sit.WebForm2" %>

<%@ Register src="WebUserControl/WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
   
</asp:Content>

