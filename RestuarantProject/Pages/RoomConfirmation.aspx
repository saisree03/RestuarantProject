<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomConfirmation.aspx.cs" Inherits="RestuarantProject.Pages.RoomConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room Confirmation</title>
    <link rel="stylesheet" href="\Design\RoomConfirmation.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <h4>Your Room has been confirmed</h4>
            <h5>We hope you will have a happy stay at Happy</h5>
            <h6>Click here to go back</h6>
            <asp:Button ID="back_btn" runat="server" CssClass="back" Text="Back" OnClick="back_btn_Click" />
        </div>
    </form>
</body>
</html>
