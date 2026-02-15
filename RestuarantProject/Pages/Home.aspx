<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/RegisterMain.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RestuarantProject.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="\Design\HOME.css"rel="stylesheet" />
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Find your Happy Stay</h1>
            <p>Comfortable Rooms • Easy booking • Affordable prices</p>
            <div class="search-box">
                <asp:TextBox ID="Loc_Txt" runat="server" Text="Location" class="Text"></asp:TextBox>
                <asp:TextBox ID="Date1_Txt" runat="server" TextMode="Date" class="Text"></asp:TextBox>
                <asp:TextBox ID="Date2_Txt" runat="server" TextMode="Date" class="Text"></asp:TextBox>
               <asp:Button ID="Search_btn" runat="server" Text="search" class="btn_search"/>
            </div>
        </div>
    </section>
    <!-- Featured Rooms -->
    <section class="Rooms">
        <div class="Rooms-Content">
            <div class="room-card">
                <img src="\Images\deluxe2.jfif"alt="Deluxe room image" />
                <h3>Deluxe Room</h3>
                <p>₹2,500 / night</p>
                <asp:Button ID="Book1" runat="server" Text="Book" class="Book" OnClick="Book1_Click"/>
            </div>
            <div class="room-card">
                <img src="\Images\family1.jfif" alt="Family room image" />
                <h3>Family Room</h3>
                 <p>₹3,500 / night</p>
                <asp:Button ID="Book2" runat="server" Text="Book" class="Book" OnClick="Book2_Click" />
            </div>
            <div class="room-card">
                <img src="\Images\single.jfif" alt="Single room image" />
                <h3>Single Room</h3>
                <p>₹1,500 / night</p>
                <asp:Button ID="Book3" runat="server" Text="Book" class="Book" OnClick="Book3_Click" />
            </div>
        </div>
    </section>
    <!-- Why choose Happy-->
    <section class="why">
        <h2>Why Choose Happy</h2>
        <div class="Why-container">
            <div>✔ Verified Rooms</div>
            <div>✔ Easy Booking</div>
            <div>✔ Secure Payments</div>
            <div>✔ 24/7 Support</div>
        </div>
    </section>
    <!-- How It Works -->
    <section class="steps">
        <h2>How It Works</h2>
        <div class="steps-container">
            <div>🔍 Search Room</div>
            <div>🏠 Choose Stay</div>
            <div>💳 Book & Pay</div>
            <div>😊 Stay Happy</div>
        </div>
    </section>
</asp:Content>

 