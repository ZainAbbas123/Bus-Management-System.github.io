<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication12.WebForm2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> Graphical User Interface</title>
    <link rel="stylesheet"href="Styles.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form2" runat="server">
      <div class="menu-bar">
        <ul>
            <li class="active">Home<i class="fa fa-home"></i>
            </li>
            <li id="active1"><a href="#">Portfolio</a><i class="fa fa-user"></i>
                  <div class="sub-menu-1">
                      <ul>
                          <li><a href="Signup.aspx">Customer</a></li>
                          <li><a href="Manager.aspx">Manager</a></li>
                      </ul>
                  </div>
            </li>


            <li id="active2"><a href="#">Services</a><i class="fa fa-angellist"></i>
                  <div class="sub-menu-1">
                      <ul>
                           
                      </ul>
                  </div>
            </li>

            <li id="active3"><a href="#">Contact Us</a><i class="fa fa-clone"></i></li>
        </ul>
    </div>

      

  <div class="slideshow-container">
       <div class="mySlides fade">
          <div class="numbertext"></div>
            <img src="bus5.jpg" style="width:95%"/>
        <div class="text"></div>
    </div>

     <div class="mySlides fade">
        <div class="numbertext"></div>
         <img src="bus6.jpg" style="width:95%"/>
     <div class="text"></div>
</div>

      <div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="bus7.jpg" style="width:95%"/>
  <div class="text"></div>
</div>

      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>


<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

        <div class="power">
          <h3 style="text-align:center;"id="za"> Powered By ZUHA</h3>
        </div>

        <script>
            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }
</script>

    </form>
      

    
</body>
</html>
