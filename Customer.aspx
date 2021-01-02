<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="WebApplication12.Customer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login and Registration Form of Customer</title>
     <link href="Styles1.css" rel="stylesheet" />
    </head>
     <body>
     <form id="form2" runat="server">
               Username: <asp:TextBox ID="Textusername" runat="server"></asp:TextBox>
               Password: <asp:TextBox ID="Textpasword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:Button ID="Button1" class="toggle-btn" runat="server" Text="LogIN" OnClick="Button1_Click"/>
                <asp:Label ID="Label2" runat="server"></asp:Label>
         <hr />
        CNIC: <asp:TextBox ID="TextCNIC" runat="server"></asp:TextBox>
        Name: <asp:TextBox ID="Textname" runat="server"></asp:TextBox>
        PhoneNo:<asp:TextBox ID="TextPhoneNo" runat="server"></asp:TextBox>
        Email: <asp:TextBox ID="Textemail" runat="server"></asp:TextBox>
        Password: <asp:TextBox ID="Textpassword" runat="server" TextMode="Password"></asp:TextBox>
          <asp:Button ID="Btnregiter" class="toggle-btn" runat="server" Text="register" OnClick="Btnregiter_Click" />
         <asp:Label ID="Label1" runat="server"></asp:Label>


     </form>
         <!--
   <script type="text/javascript">
       function Button1_Click()
      {

           window.open('Profile.aspx');
           return false;
      }
   </script>
         -->
</body>
</html>
