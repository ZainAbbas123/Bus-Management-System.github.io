<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Print_my_wallet.aspx.cs" Inherits="WebApplication12.Print_my_wallet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:GridView ID="Check_Wallet" runat="server" OnSelectedIndexChanged="Check_Wallet_SelectedIndexChanged"></asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
