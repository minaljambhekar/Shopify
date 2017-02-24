<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address</title>
<%@ include file="Head.jsp" %>
<br>
<br>
<br>
<div class="container" id="div1">
  <h2 align="center">shopify</h2>
  <p align="center">Please enter your Address carefully:</p>
  <form:form commandName="order.cart.person">
                    
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.address1" for="address1">Address: </form:label>
	  <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.address1" id="address1" placeholder="Address Line 1"></form:input>
	  </div>
    </div>
	
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.address2" for="address2">Address: </form:label>
      <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.address2" id="address2" placeholder="Address Line 2"></form:input>
	  </div>	
    </div>
	
	<div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.city" for="city">City: </form:label>
      <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.city" id="city" placeholder="Enter your City" />
	  </div>
    </div>
	
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="shippingAddress.pin" for="pin">Pin: </form:label>
	  <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="shippingAddress.pin" id="pin"  placeholder="Enter Pin" />
	  </div>
    </div>
	
	<input type="submit" class="btn btn-primary btn-sm btn-block" value="Save Address" name="_eventId_shippingAddressChecked" />
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}">
</form:form>
  
  
</div>


<%@ include file="Foot.jsp" %>