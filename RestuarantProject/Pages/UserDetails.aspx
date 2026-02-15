<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="RestuarantProject.Pages.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="\Design\UserDetails.css" />
    <div class="grid-scroll-wrapper">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</div>
</asp:Content>
