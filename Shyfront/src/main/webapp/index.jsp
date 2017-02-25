<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
 <script src="js/jquery-3.1.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="css/bootstrap.min.css">
   <script src="js/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style type="text/css">
  body {
    bgcolor="pink"
  }
  .carousel-inner > .item > img,
  .carousel-inner > .tem > a > img{  height:267px; width:856px; }
  #footer {
  position: relative;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 45px;
  background-color:black;
  }
  #div1{ background-color:#fafaf2;}
  #img1 {
   padding:1px;
   border:1px solid #021a40;
   background-color:#D6D1CF;
 }
</style>
</head>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">

  <a class="navbar-brand" href="#">Shopify</a>
  </div>
  <ul class="nav navbar-nav">
  <li class="active"><a href="home"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp Home</a></li>
  <li class="dropdown">
  <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-product-hunt fa-fw" aria-hidden="true"></i>&nbsp; Products <span class="fa fa-caret-down"></span></a>
  <ul class="dropdown-menu">
  <li>
  <a href="#">Men</a>
  </li>
  <li>
  <a href="#">Women</a>
  </li>
  <li>
  <a href="#">Kids</a>
  </li>
  </ul>
  </li>
  <li><a href="ContactUs">ContactUs</a><li> 
  <li><a href="Aboutus">AboutUs</a><li> 
  </ul> 
  <ul class="nav navbar-nav navbar-Right">
  <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
  <li><a href="Register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
  </ul>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
  <ul class="nav navbar-nav navbar-Right">
  <li><a href="AdminPage"><i class="fa fa-buysellads fa-fw" aria-hidden="true"></i>AdminPage</a></li>
  <li><a href="Cart"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
  <li><a href="Logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
  </ul>
  </sec:authorize>
  <sec:authorize access="hasRole('ROLE_USER')">
  <ul class="nav navbar-nav navbar-Right">
  <li><a href="CartPage"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
  <li><a href="Logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
  </ul>
  </sec:authorize>
 </div>
</div>
</nav>
<br>
<br>
<br>
  
  <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

     <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/e.jpg" class="img-circle" alt="one"width="230" height="180">
      </div>

      <div class="item">
        <img src="images/b.jpg" class="img-circle" alt="two"width="230" height="180">
      </div>
    
      <div class="item">
        <img src="images/j.jpg" class="img-circle" alt="three"width="230" height="180">
      </div>

      <div class="item">
        <img src="images/c.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" 

href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-

slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<br>
<!-- Youtube Video-->
<div class="container" id="div1">
<div class="row">
  <div class="col-sm-6" >
   <h3>100% Secure Payment{All Credit and Debit Cards Accepted}</h3>
   <h3>100% Payment Protection</h3>
   <h3>Easy Return Policy</h3>
  </div>
  <div class="col-sm-6">
   <br>
   <iframe width="300" height="200" src="https://www.youtube.com/embed/xDql2LK_q2Y" frameborder="0" allowfullscreen></iframe>
   </iframe>
  </div>
</div>

<br>
<!-- Container (Portfolio Section) -->
<div class="container-fluid text-center bg-grey">
  <h2>Category</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center">
    <div class="col-sm-4">
        <img src="resources/g.jpg" alt="Paris" width="400" height="300">
        <p><strong>MEN</strong></p>
</div>
    <div class="col-sm-4">
        <img src="resources/j.jpg" alt="New York" width="400" height="300">
        <p><strong>WOMEN</strong></p>
         </div>
    <div class="col-sm-4">
        <img src="resources/k.jpg" alt="San Francisco" width="400" height="300">
        <p><strong>KIDS</strong></p>
       </div>
    </div>
  </div>


<!-- Container (Contact Section) -->
<div class="container-fluid bg-grey">
  <h2 class="text-center">ContactUs</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Nagpur</p>
      <p><span class="glyphicon glyphicon-phone"></span> +09011231446</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail:@minaljambhekar@gmail.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>


 <footer class="section" 

style="background:black">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <span 

class="copyright text-inverse">Copyright Shopify Inc. 2016</span>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-md-12 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    
</body>
</html>
