<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Easy_Jazz.aspx.cs" Inherits="WebApplication12.Easy_Jazz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
           <title> Easy Jazz</title>
       <link href="easyjazz.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
       <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
       <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form2" runat="server">
    
        <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Check out — it’s time to send us Password and Phone No!
            </h1>
            <h2 class="wv-heading--subtitle">
               
            </h2>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form method="post" name="login">
                  <div class="form-group">
                          

                  <div class="form-group">
                      <asp:TextBox ID="TextPhoneNo1" class="form-control my-input" placeholder="0304-1234567" runat="server"></asp:TextBox>                 <!--    <input type="number" name="phone" id="TextPhoneNo"  class="form-control my-input" placeholder="Phone"/>-->
                  </div>

                  

                   <div class="form-group">
                               <asp:TextBox ID="TextPassword1" runat="server" class="form-control my-input" placeholder="Password" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
                    <!-- <input type="password"  name="password" id="Textpassword"  class="form-control my-input" placeholder="Password"/>-->
                  </div>


                  <div class="text-center ">
                       <asp:Button ID="Confirm_Payment" runat="server"  class="btn btn-outline-primary" Text="Button" OnClick="Confirm_Payment_Click" />
                      <br />
                      <br />
                          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <!--   <button type="button" class="btn btn-outline-primary" >Register</button>-->
                      <!--class="toggle-btn"-->
                  </div>

                   <br />
                  <div class="col-md-12 ">
                     <div class="login-or">
                        <hr class="hr-or"/>
                        <span class="span-or">or</span>
                     </div>
                  </div>
                  <div class="form-group">
                     <a class="btn btn-block g-button" href="#">
                     <i class="fa fa-google"></i> Sign up with Google
                     </a>
                  </div>
                  <p class="small mt-3">By signing up, you are indicating that you have read and agree to the <a href="#" class="ps-hero__content__link">Terms of Use</a> and <a href="#">Privacy Policy</a>.
                  </p>
               </form>
            </div>
         </div>
      </div>
   </div>


    </form>
</body>
</html>

