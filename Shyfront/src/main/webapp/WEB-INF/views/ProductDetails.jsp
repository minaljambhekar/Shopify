<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
  <title>Product_Details</title>
<%@ include file="template/Header.jsp" %>
<br>
<br>
<br>
<br>
<div class="container" id="div1">
        <h1>${product.productName}</h1>
         <!-- width="230" height="180" -->
         <div class="row">
           <div class="col-md-6">
                <img src="<c:url value='/resources/${product.productId}.jpg' />" class="img-responsive" alt="Picture"  />
           </div>
           <div class="col-md-6">
                <ul>
                    <li><h4>Brand</h4>${product.brand}</li>
                    <li><h4>Description</h4>${product.description}</li>
                    <li><h4>Price</h4>${product.price}</li>
                    <li><h4>Category</h4>${product.category}</li>
                    <a class="btn btn-primary" href="<c:url value='/AddToCart/${product.productId}' />">Add to Cart</a>
               </ul>
          </div>
         </div>
</div>
<%@ include file="template/Footer.jsp" %>