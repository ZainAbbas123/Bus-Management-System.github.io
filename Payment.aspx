<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication12.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Payment methods</title>
     <link href="Payment.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/> 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

         <div class="container">
             <div class="dropdown">
        <asp:DropDownList ID="Payment_Method" Width="180px" height="50px" data-toggle="dropdown"  AutoPostBack="True" ForeColor="Black" class="btn btn-primary dropdown-toggle" runat="server" OnSelectedIndexChanged="Payment_Method_SelectedIndexChanged"> 
            <asp:ListItem>Select</asp:ListItem> 
            <asp:ListItem >Easypaisa</asp:ListItem>
            <asp:ListItem >JazzCash</asp:ListItem>
            <asp:ListItem  >Wallet</asp:ListItem>
        </asp:DropDownList>
                 </div>
         </div>

        <br />
        <br />
        <div class="text-center">
        <asp:Button ID="Payment_Button" class="btn btn-outline-primary"  runat="server" Text="Button" OnClick="Payment_Button_Click" />
            </div>
    </div>
    </form>
</body>
</html>
