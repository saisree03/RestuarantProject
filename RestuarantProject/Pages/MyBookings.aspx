<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="RestuarantProject.Pages.MyBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="\Design\Mybookings.css" />
    <div class="grid-scroll-wrapper">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>


</asp:Content>
