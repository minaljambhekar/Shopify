<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
 <script src="js/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
  
 <!DOCTYPE html>
<html lang="en">
 
<head>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="css/bootstrap.min.css">
   <script src="js/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
   <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
  
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
  <li><a href="ContactUs.html">ContactUs</a><li> 
  <li><a href="Aboutus.html">AboutUs</a><li> 
  </ul> 
  <ul class="nav navbar-nav navbar-Right">
  <li><a href="Login.html"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
  <li><a href="Register.html"><span class="glyphicon glyphicon-user"></span>Register</a></li>
  </ul>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
  <ul class="nav navbar-nav navbar-Right">
  <li><a href="AdminPage.jsp"><i class="fa fa-buysellads fa-fw" aria-hidden="true"></i>AdminPage</a></li>
  <li><a href="Cart.jsp"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
  <li><a href="Logout.jsp"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
  </ul>
  </sec:authorize>
  <sec:authorize access="hasRole('ROLE_USER')">
  <ul class="nav navbar-nav navbar-Right">
  <li><a href="CartPage.jsp"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
  <li><a href="Logout.jsp"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
  </ul>
  </sec:authorize>
 </div>
</div>
</nav>
<br>
<br>
<br>
  