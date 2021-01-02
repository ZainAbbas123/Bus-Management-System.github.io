<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mang_Port.aspx.cs" Inherits="WebApplication12.Mang_Port" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="Manag.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
       <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
       <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Check out — Hey Manager We give you Authority and access to our Database!
            </h1>
            <h2 class="wv-heading--subtitle">
               You can Delete,Update and check all the Passengers
            </h2>
         </div>
      </div>
                  <div class="text-center">
                        <asp:Button ID="Btnregiter" class="btn btn-outline-primary"  runat="server" Text="Update Routes" OnClick="Btnregiter_Click"/>
                      <br />
                      <br />
                          <asp:Label ID="Label2" runat="server"></asp:Label>
                  </div>

                   <div class="text-center1">
                        <asp:Button ID="Button1" class="btn btn-outline-primary"  runat="server" Text="Delete Routes" OnClick="Button1_Click"/>
                      <br />
                      <br />
                          <asp:Label ID="Label1" runat="server"></asp:Label>
                  </div>
    </div>
    </form>
</body>
</html>
