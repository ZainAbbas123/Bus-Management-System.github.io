<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="WebApplication12.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
           <title> Sign up</title>
       <link href="signup.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
       <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
       <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    
        <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Check out — it’s time to Sign in!
            </h1>
            <h2 class="wv-heading--subtitle">
               Hey Passangers Please Sign in to go ahead
            </h2>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form action="" method="post" name="login">
                  <div class="form-group">

                   <asp:TextBox ID="Textusername" class="form-control my-input" placeholder="CNIC" runat="server"></asp:TextBox>
                  </div>

                   <div class="form-group">
                        <asp:TextBox ID="Textpasword" runat="server" class="form-control my-input" placeholder="Password" TextMode="Password"></asp:TextBox>
                  </div>


                  <div class="text-center ">
                        <asp:Button ID="Btnregiter" class="btn btn-outline-primary"  runat="server" Text="Register" OnClick="Button1_Click" />
                      <br />
                      <br />
                          <asp:Label ID="Label2" runat="server"></asp:Label>
            
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
