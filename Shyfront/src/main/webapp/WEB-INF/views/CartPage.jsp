<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
  <title>Cart</title>

<%@ include file="template/Header.jsp" %>
<script src="<c:url value='/resources/ordercontroller.js' />"></script>
<br>
<br>
<br>
<div class="container"  id="div1" ng-app="addToCartApp">

<% String type = (String) request.getAttribute("prodData"); %>

<div class="bs-component" ng-controller="addToCartCtrl" ng-init="retrieveCart(${person.cart.cartId})"> 

<br>


  <table class="tg">
    <thead>
      <tr>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Item Total</th>
        
        <th></th>
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="item in cart.items">
        <td>{{item.product.productName}}</td>
        <td>{{item.product.brand}}</td>
        <td>{{item.product.price}}</td>
        <td>{{item.quantity}}</td>
        <td>{{item.itemTotal}}</td>
        
        <td><a href="#" ng-click="removeItemFromCart(item.itemId)"><i class="fa fa-times" aria-hidden="true"></i></a></td>
      </tr>
      
      <tr>
          <td></td>
          <td></td>
          <td>Total:</td>
          <td>{{GrandTotalOfItems()}}</td>
          <td><a href="<c:url value='/order/${person.cart.cartId}'/>" class="btn btn-success">CheckOut</a></td>
      </tr>
	  
	
	  
    </tbody>
  </table>
 
  </div>   <!-- ng-controller -->
  <br>
 </div>    <!--  ng-app -->



<%@ include file="template/Footer.jsp" %>