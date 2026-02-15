<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpConfirm.aspx.cs" Inherits="RestuarantProject.Pages.SignUpConfirm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Successful</title>
    <link rel="stylesheet" href="..\Design\SignUpConfirm.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="card">
                <h2>Account Created Successfully 🎉</h2>
                <p>You can now log in using your credentials.</p>

                <asp:Button ID="lgn_btn" runat="server" Text="Log In" CssClass="login-btn" OnClick="lgn_btn_Click" />
            </div>
        </div>
    </form>
</body>
</html>
