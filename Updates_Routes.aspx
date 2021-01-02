<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Updates_Routes.aspx.cs" Inherits="WebApplication12.Updates_Routes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Firstly Show Roots then Update Roots</title>
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
      Enter Bus_No  <asp:TextBox ID="get_Bus_No" runat="server"></asp:TextBox>
        <br />
        <br />
          Enter Current Time  <asp:TextBox ID="Current_Time" runat="server"></asp:TextBox>
        <br />
        <br />
       Enter Updated Time <asp:TextBox ID="Updated_Time" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>

    </form>
</body>
</html>
