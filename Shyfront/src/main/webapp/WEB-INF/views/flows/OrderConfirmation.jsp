<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You</title>
<%@ include file="Head.jsp" %>
<br>
<br>
<br>
<div class="container" id="div1">

<h2>Thank you for  placing your order with us. Your Order Number is : ${order.orderId}</h2>
<br>
<br>
<h3>Your Order will be dispatched in next 2 days</h3>

</div>

<%@ include file="Foot.jsp" %>