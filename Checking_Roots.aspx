<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checking_Roots.aspx.cs" Inherits="WebApplication12.Checking_Roots" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title> Checking Roots </title>
    <link rel="stylesheet"href="CheckingRoots.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/> 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <div class="container">
            <div class="dropdown">
         <asp:DropDownList ID="DepartureCity" Width="170px" height="50px" style="text-align:center" data-toggle="dropdown" AutoPostBack="True" ForeColor="Black" class="btn btn-primary dropdown-toggle"  runat="server"> 
            <asp:ListItem>Select</asp:ListItem>
              <asp:ListItem >Multan</asp:ListItem>
            <asp:ListItem >Lahore</asp:ListItem>
            <asp:ListItem  >Faisalabad</asp:ListItem>
             <asp:ListItem >Islamabad</asp:ListItem>
             <asp:ListItem >Rawalpindi</asp:ListItem>
             <asp:ListItem >DG Khan</asp:ListItem>
        </asp:DropDownList> 
             </div>
          </div> 

        <br />
        <br />
        
         <div class="container">
             <div class="dropdown">
         <asp:DropDownList ID="ArrivalTime" Width="170px" height="50px" data-toggle="dropdown"  AutoPostBack="True" ForeColor="Black" class="btn btn-primary dropdown-toggle" runat="server"> 
             <asp:ListItem>Select</asp:ListItem>
             <asp:ListItem >Multan</asp:ListItem>
            <asp:ListItem >Lahore</asp:ListItem>
            <asp:ListItem  >Faisalabad</asp:ListItem>
             <asp:ListItem >Islamabad</asp:ListItem>
             <asp:ListItem >Rawalpindi</asp:ListItem>
             <asp:ListItem >DG Khan</asp:ListItem>
        </asp:DropDownList>  
                 </div>
                 </div>

        <br />
        <br />


        <div class="text-center1">
         <asp:DropDownList ID="Departure_Date" name="DropDownList1" Class="Dep_Date" runat="server" AppendDataBoundItems="true" AutoPostBack="True"  OnSelectedIndexChanged="Departure_Date_SelectedIndexChanged" DataTextField="current_date1" DataValueField="current_date1"> 
             <asp:ListItem> Select Date</asp:ListItem>
          </asp:DropDownList> 
            </div>
         

        <br />
        <br />
        <div class="text-center">
         <asp:Button ID="Button3" style="text-align:center" class="btn btn-outline-primary"  runat="server" Text="Button" OnClick="Button3_Click"/>
         </div>
            <br />
               <asp:Label ID="Label1" Class="leb" runat="server" Text=""></asp:Label>
               <asp:Label ID="Label89" Class="leb" runat="server" Text=""></asp:Label>
       <br />
    
        <br />
    </form>


</body>
</html>
