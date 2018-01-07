<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="dangNhap.aspx.cs" Inherits="FSoon.WebForm1" %>
<%@ Register src="WebUserControl/dangNhapControl.ascx" tagname="dangNhapControl" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:dangNhapControl ID="dangNhapControl1" runat="server" />
</asp:Content>
