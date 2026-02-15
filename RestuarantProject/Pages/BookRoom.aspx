<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="BookRoom.aspx.cs" Inherits="RestuarantProject.Pages.BookRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="\Design\bookroom.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <div class="Main-form">
        <div class="form-content">
            <asp:Label ID="Name" runat="server">User Name</asp:Label>
            <asp:TextBox ID="Name_Txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Gen" runat="server">Gender</asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-content">
            <asp:Label ID="Dob" runat="server">Date of Birth</asp:Label>
            <asp:TextBox ID="Dob_txt" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Nan" runat="server">Nationality</asp:Label>
            <asp:TextBox ID="Nan_txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Mob" runat="server">Mobile No</asp:Label>
            <asp:TextBox ID="Mob_txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Email" runat="server">Email Address</asp:Label>
            <asp:TextBox ID="Email_txt" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="IdType" runat="server">Id Proof Type </asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Aadhaar</asp:ListItem>
                <asp:ListItem>Passport</asp:ListItem>
                <asp:ListItem>Driving License</asp:ListItem>
                <asp:ListItem>Voter Id</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-content">
            <asp:Label ID="IdNo" runat="server">Id Proof Number</asp:Label>
            <asp:TextBox ID="IdNo_txt" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="IdUpload" runat="server">Id Proof Upload</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <div class="form-content">
            <asp:Label ID="addr" runat="server">Address</asp:Label>
            <asp:TextBox ID="addr_txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="City" runat="server">City</asp:Label>
            <asp:TextBox ID="City_txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="State" runat="server">State</asp:Label>
            <asp:TextBox ID="State_txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Country" runat="server">Country</asp:Label>
            <asp:TextBox ID="Country_txt" runat="server"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Zip" runat="server">Zip Code</asp:Label>
            <asp:TextBox ID="Zip_txt" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Location" runat="server">Location</asp:Label>
            <asp:TextBox ID="Location_txt" runat="server" ></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="checkIn" runat="server">CheckIn</asp:Label>
            <asp:TextBox ID="CheckIn_txt" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="checkOut" runat="server">CheckOut</asp:Label>
            <asp:TextBox ID="CheckOut_txt" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="noOfNigts" runat="server">No of Nights</asp:Label>
            <asp:TextBox ID="NoOfNigts_txt" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Guests" runat="server">No of Guests</asp:Label>
            <asp:TextBox ID="Guests_txt" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div class="form-content">
            <asp:Label ID="Roomtype" runat="server">Room Type</asp:Label>
             <asp:DropDownList ID="DropDownList3" runat="server">
                 <asp:ListItem>select</asp:ListItem>
                 <asp:ListItem>Single</asp:ListItem>
                 <asp:ListItem>Deluxe</asp:ListItem>
                 <asp:ListItem>Family</asp:ListItem>
            </asp:DropDownList>       
        </div>
        <div class="form-content">
            <asp:Label ID="Roomno" runat="server">Room No </asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>101</asp:ListItem>
                <asp:ListItem>102</asp:ListItem>
                <asp:ListItem>103</asp:ListItem>
                <asp:ListItem>104</asp:ListItem>
                <asp:ListItem>105</asp:ListItem>
                <asp:ListItem>201</asp:ListItem>
                <asp:ListItem>202</asp:ListItem>
                <asp:ListItem>203</asp:ListItem>
                <asp:ListItem>204</asp:ListItem>
                <asp:ListItem>205</asp:ListItem>
                <asp:ListItem>301</asp:ListItem>
                <asp:ListItem>302</asp:ListItem>
                <asp:ListItem>303</asp:ListItem>
                <asp:ListItem>304</asp:ListItem>
                <asp:ListItem>305</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="button">
            <asp:Button ID="Book_btn" runat="server" Text="Book" OnClick="Book_btn_Click"/>
        </div>
    </div>
</asp:Content>
