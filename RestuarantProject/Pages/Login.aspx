<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RestuarantProject.Pages.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Happy</title>
    <link rel="stylesheet" href="\Design\LOGIN.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-box">
                <div class="box-heading">
                    <h1>Happy</h1>
                    <p>Feels like your home</p>
                </div>
                <div class="form-content">
                <div class="form-group">
                    <label for="UserText">User Name</label>
                    <asp:TextBox ID="User_Txt" runat="server" class="Txt_Input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="User_Txt" ErrorMessage="these filed shouldn't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label for="PasswordText">Password</label>
                    <asp:TextBox ID="Pass_Text" runat="server" class="Txt_Input" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pass_Text" ErrorMessage="these filed shouldn't be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <output id="wrong" runat="server"></output>
                <asp:Button ID="Log_btn" runat="server" Text="Login" class="login-button" OnClick="Log_btn_Click"/>

                <div class="box-links">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">Forgotten Account</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="false">Forgotten Password</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="false">Sign Up</asp:LinkButton>                
                </div>
                    </div>
            </div>
        </div>
    </form>
</body>
</html>
