<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgottenPassword.aspx.cs" Inherits="RestuarantProject.Pages.ForgottenPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Happy</title>
    <link rel="stylesheet" href="\Design\ForgottenPassword.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Forgoten-content">
            <div class="content-text">
                <label for="user" class="text_lbl">UserName</label>
                <asp:TextBox ID="user_txt" runat="server" class="form_input"></asp:TextBox>
            </div>
            <div class="content-text">
                <label for="npass" class="text_lbl">New Password</label>
                <asp:TextBox ID="pass_txt" runat="server" class="form_input" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpass_txt" ControlToValidate="pass_txt" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div class="content-text">
                <label for="ncpass" class="text_lbl">Confirm Password</label>
                <asp:TextBox ID="cpass_txt" runat="server" class="form_input" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pass_txt" ControlToValidate="cpass_txt" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div class="change_btn">
                <asp:Button ID="change_btn" runat="server" Text="Change Password" OnClick="change_btn_Click"/>
            </div>
            <output id="msg" runat="server"></output>
        </div>
    </form>
</body>
</html>
