<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myBooking.aspx.cs" Inherits="WebApplication12.myBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> My Bookings</title>
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
                            <p class="text-danger" style = "font-family:georgia,garamond,serif;font-size:30px;font-style:italic ;text-align:center">List of MyBookings</p>  
                           <span class="text-info"></span> 
                        </div>  
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
        <asp:GridView ID="MyBookings" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="ID" EmptyDataText="." runat="server">
                     <Columns>  
                                             <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                            <asp:BoundField DataField="CNIC" HeaderText="CNIC" ReadOnly="True" SortExpression="CNIC" />  
                                            <asp:BoundField DataField="RouteId" HeaderText="RouteId" SortExpression="RouteId" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                            <asp:BoundField DataField="Bus_ID" HeaderText="Bus_ID" SortExpression="Bus_ID" ItemStyle-CssClass="visible-xs" HeaderStyle-CssClass="visible-xs" />  
                                            <asp:BoundField DataField="SeatNo" HeaderText="SeatNo" SortExpression="SeatNo" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" />  
                                            <asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />  
                                            <asp:BoundField DataField="BusTime" HeaderText="BusTime" SortExpression="BusTime" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />                           
                                            <asp:BoundField DataField="BusDate" HeaderText="BusDate" SortExpression="BusDate" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />                                                    
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
                                    
     Please enter ID to confirm the Ticket   <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
         <br />
         <br />
        <asp:Button ID="Go_to_Ticket" runat="server" Text="Button" OnClick="Go_to_Ticket_Click" />
                                    
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        
        <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
