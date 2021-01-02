<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete_route_no_permanently.aspx.cs" Inherits="WebApplication12.delete_route_no_permanently" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

        <asp:GridView ID="RootsGrid" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="BusNo" EmptyDataText="There are no data records to display because we are not running buses after this Time.">

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
        <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label44" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label45" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label47" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label48" runat="server" Text="Label"></asp:Label>

    </form>
</body>
</html>
