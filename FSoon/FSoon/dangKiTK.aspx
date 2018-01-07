<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="dangKiTK.aspx.cs" Inherits="FSoon.WebForm2" %>
<%@ Register src="WebUserControl/dangKiTK.ascx" tagname="dangKiTK" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:dangKiTK ID="dangKiTK1" runat="server" />
</asp:Content>
