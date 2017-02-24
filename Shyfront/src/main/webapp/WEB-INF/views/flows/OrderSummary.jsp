<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
<%@ include file="Head.jsp" %>
<script src="<c:url value='/resources/ordercontroller.js' />"></script>
<br>
<br>
<br>

<div class="section">
<div class="container" id="div2" ng-app="addToCartApp" ng-controller="addToCartCtrl" ng-init="retrieveCart(${order.cart.cartId})">
<div class="row">
  <div class="col-md-6">
  <h1>Shipping Address:</h1>
  <ul class="lead list-group">
      <li class="list-group-item">Name: ${order.cart.person.name}</li>
      <li class="list-group-item">Address line 1: ${order.cart.person.shippingAddress.address1}</li>
      <li class="list-group-item">Address line 2: ${order.cart.person.shippingAddress.address2}</li>
      <li class="list-group-item">City: ${order.cart.person.shippingAddress.city}</li>
      <li class="list-group-item">Pin: ${order.cart.person.shippingAddress.pin}</li>
  </ul>
  </div>
  
  <div class="col-md-6">
  <br>
  <br>
  <br>
  <table class="tg">
    <thead>
      <tr>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Item Total</th>
                
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="item in cart.items">
        <td>{{item.product.productName}}</td>
        <td>{{item.product.brand}}</td>
        <td>{{item.product.price}}</td>
        <td>{{item.quantity}}</td>
        <td>{{item.itemTotal}}</td>
      </tr>
      
      <tr>
          <td></td>
          <td></td>
          <td>Total:</td>
          <td>{{GrandTotalOfItems()}}</td>
          
      </tr>
	  
	
	  
    </tbody>
  </table>
      <form:form class="form-horizontal">
      <input type="hidden" name="_flowExecutionKey">
      
      <input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />
     </form:form>
     <!-- <input type="submit" class="btn btn-success" name="_eventId_orderConfirmed" value="Next"  />
       -->              
          
   
  
      
  
  
  </div>


</div>
<br>
</div>
</div>


<%@ include file="Foot.jsp" %>