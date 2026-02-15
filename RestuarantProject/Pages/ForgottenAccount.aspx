<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgottenAccount.aspx.cs" Inherits="RestuarantProject.Pages.ForgottenAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link rel="stylesheet" href="\Design\ForgottenAccount.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Form-Content">
            <div class="heading">
                <h5>Forgotten Your Account!!!</h5>
                <p>You can find it here</p>
            </div>
            <div class="forms">
                <label for="phn" class="label_txt">PhoneNo/Email</label>
                <asp:TextBox ID="Inp" runat="server"  class="input_txt" ></asp:TextBox>
            </div>
            <div class="submit">
               <asp:Button ID="Sub_btn" runat="server" OnClick="Sub_btn_Click" Text="Submit"/>
            </div>
            <output class="out" id="Out" runat="server"></output>
        </div>
    </form>
</body>
</html>
