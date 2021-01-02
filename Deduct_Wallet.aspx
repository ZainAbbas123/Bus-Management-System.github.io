<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deduct_Wallet.aspx.cs" Inherits="WebApplication12.Deduct_Wallet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> Deduct Rupees from Wallet</title>
         <meta charset="utf-8" /> 
    <link href="Book_Seats.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
         <br />  
        <div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                            <p class="text-danger" style = "font-family:georgia,garamond,serif;font-size:30px;font-style:italic ;text-align:center">Your Amount has been deducted Successfully from your Wallet</p>  
                           <span class="text-info"></span> 
                        </div>  
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">
               <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="CNIC" EmptyDataText=".">

                      <Columns>  
                                             <asp:BoundField DataField="CNIC" HeaderText="CNIC" ReadOnly="True" SortExpression="CNIC" />  
                                             <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
  
                       </Columns>
               </asp:GridView>

                                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div> 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

    </form>
</body>
</html>
