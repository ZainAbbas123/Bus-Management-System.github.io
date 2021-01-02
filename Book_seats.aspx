<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_seats.aspx.cs" Inherits="WebApplication12.Book_seats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>  Show Seats</title>
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
                            <p class="text-danger" style = "font-family:georgia,garamond,serif;font-size:30px;font-style:italic ;text-align:center">List of Available and Allocated Seats</p>  
                           <span class="text-info"></span> 
                        </div>  
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
        <asp:GridView ID="BookGrid" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="row1" EmptyDataText=".">
        
                                    <Columns>  
                                            <asp:BoundField DataField="row1" HeaderText="row1" ReadOnly="True" SortExpression="row1" />  
                                            <asp:BoundField DataField="row2" HeaderText="row2" SortExpression="row2" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                            <asp:BoundField DataField="row3" HeaderText="row3" SortExpression="row3" ItemStyle-CssClass="visible-xs" HeaderStyle-CssClass="visible-xs" />  
                                            <asp:BoundField DataField="row4" HeaderText="row4" SortExpression="row4" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" />  
                                            <asp:BoundField DataField="row5" HeaderText="row5" SortExpression="row5" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />            
                                       
                                    </Columns>  
        </asp:GridView> 
                    
                                        </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>                
                                      
        <br />
        <br /> 
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextSeatNo" runat="server" placeholder="Which Seat you wanna select"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BookSeats"  runat="server" Text="Button" OnClick="BookSeats_Click" />
    </form>
</body>
</html>
