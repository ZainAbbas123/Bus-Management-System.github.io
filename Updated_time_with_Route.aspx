<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Updated_time_with_Route.aspx.cs" Inherits="WebApplication12.Updated_time_with_Route" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Updated Time With Route</title>
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
                            <p class="text-danger" style = "font-family:georgia,garamond,serif;font-size:30px;font-style:italic ;text-align:center">List of Available Buses</p>  
                           <span class="text-info"></span> 
                        </div>  
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  

        <asp:GridView ID="RootsGrid" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="BusNo" EmptyDataText="You can not change time because at updated time our bus is travelling to specific location">

            <Columns>  
                                            <asp:BoundField DataField="BusNo" HeaderText="BusNo" ReadOnly="True" SortExpression="BusNo" />  
                                            <asp:BoundField DataField="Departure_location" HeaderText="Departure_location" SortExpression="Departure_location" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />  
                                            <asp:BoundField DataField="Arrival_location" HeaderText="Arrival_location" SortExpression="Arrival_location" ItemStyle-CssClass="visible-xs" HeaderStyle-CssClass="visible-xs" />  
                                            <asp:BoundField DataField="busTime" HeaderText="busTime" SortExpression="busTime" HeaderStyle-CssClass="visible-md" ItemStyle-CssClass="visible-md" />  
                                            <asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />  
                                       
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

   

                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
