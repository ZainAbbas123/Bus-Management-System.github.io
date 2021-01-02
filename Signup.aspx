<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication12.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
               Check out — it’s time to Sign up!
            </h1>
            <h2 class="wv-heading--subtitle">
               Hey Customers Please Sign up to go ahead
            </h2>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form method="post" name="login">
                  <div class="form-group">
                           <asp:TextBox ID="TextCNIC" type="number" class="form-control my-input" placeholder="CNIC" runat="server" onkeypress="return IsNumeric(event);" ondrop="return false;" minlength = "14" maxlength = "14" onpaste="return false;"></asp:TextBox>
                  </div>
                  
                  <div class="form-group">
                       <asp:TextBox ID="Textname"  class="form-control my-input" placeholder="Name" runat="server" maxlength = "30"></asp:TextBox>
                  </div>

                  <div class="form-group">
                      <asp:TextBox ID="TextPhoneNo" class="form-control my-input" placeholder="0304-1234567" runat="server" minlength = "12" maxlength = "12"></asp:TextBox>
                   <!--   <span id="messages"></span>-->
                  </div>

                   <div class="form-group">
                             <asp:TextBox ID="Textemail" type="email"  size="30" class="form-control my-input" placeholder="Email" runat="server" maxlength = "23"></asp:TextBox>
             
                  </div>

                   <div class="form-group">
                        <asp:TextBox ID="Textpassword" runat="server" class="form-control my-input" placeholder="Password" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
                  </div>


                  <div class="text-center ">
                        <asp:Button ID="Btnregiter" class="btn btn-outline-primary"  runat="server" Text="Register" OnClick="Btnregiter_Click" />
                      <br />
                      <br />
                          <asp:Label ID="Label1" runat="server"></asp:Label>
            
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
        
        <script type="text/javascript">
            var specialKeys = new Array();
            specialKeys.push(8); //Backspace
            function IsNumeric(e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                document.getElementById("error").style.display = ret ? "none" : "inline";
                return ret;
            }

            //var Phone_No = document.getElementById("TextPhoneNo");
            //if (isNaN(Phone_No)) {
            //    document.getElementById("messages").innerHTML = "Please Enter NumericValue";
            //}
            //if (Phone_No.length() < 10) {
            //    document.getElementById("messages").innerHTML = "Mobile Number must be 11 Digit";
            //}
            //if (Phone_No.length() > 11) {
            //    document.getElementById("messages").innerHTML = "Mobile Number must be 11 Digit";
            //}
    </script>

    </form>
</body>
</html>
