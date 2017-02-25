<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%-- <%@ page session="false"%> --%>
<%@ page isELIgnored="false" %>
<html>
<head>
	<title>Admin Page</title>
<%@ include file="template/Header.jsp" %>


	
	

<!-- Admin Person Part -->
<br>
<br>
<br>
<div class="container">
<div class="row"  id="div1">
   <div class="col-sm-4">
<h1>
	Add a Person
</h1>

<c:url var="AddPerson" value='/person/add' />

<form:form action="${AddPerson}" modelAttribute="person">
<table>
	<c:if test="${!empty person.name}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="email">
				<spring:message text="Email"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="number">
				<spring:message text="Number"/>
			</form:label>
		</td>
		<td>
			<form:input path="number" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="role">
				<spring:message text="Role"/>
			</form:label>
		</td>
		<td>
			<form:input path="role" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty person.name}">
				<input type="submit"
					value="<spring:message text="Edit Person"/>" />
			</c:if>
			<c:if test="${empty person.name}">
				<input type="submit"
					value="<spring:message text="Add Person"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
</div>
<div class="col-sm-8">
<h3>Persons List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">Person ID</th>
		<th width="120">Person Name</th>
		<th width="120">Email Address</th>
		<th width="120">Mobile Number</th>
		<th width="120">Role</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.id}</td>
			<td>${person.name}</td>
			<td>${person.email}</td>
			<td>${person.number}</td>
			<td>${person.role}</td>
			<td><a href="<c:url value='/edit/${person.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</div>
</div>
</div>

<!-- Admin Product Part -->
<br>
<br>
<div class="container"  id="div1">

<h1>
	Add Product
</h1>



<c:url var="AddProduct" value='/product/add' />

<form:form action="${AddProduct}" modelAttribute="product" enctype="multipart/form-data">



<table>
	<c:if test="${!empty product.productName}">
	<tr>
		<td>
			<form:label path="productId">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="productId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="productId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="brand">
				<spring:message text="Brand"/>
			</form:label>
		</td>
		<td>
			<form:input path="brand" />
			<form:errors path="brand"></form:errors>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="productName">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="productName" />
			<form:errors path="productName"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="price">
				<spring:message text="Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="price" />
			<form:errors path="price"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="category">
				<spring:message text="Category"/>
			</form:label>
		</td>
		<td>
			<form:input path="category" />
			<form:errors path="category"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="description">
				<spring:message text="Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="description" />
			<form:errors path="description"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="image">
				<spring:message text="Image"/>
			</form:label>
		</td>
		<td>
			<form:input type="file" path="image" />
			<form:errors path="image"/>
		</td>
	</tr>
	
	
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty product.productName}">
				<input type="submit"
					value="<spring:message text="Edit Product"/>" />
			</c:if>
			<c:if test="${empty product.productName}">
				<input type="submit"
					value="<spring:message text="Add Product"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<h3>Product List</h3>
<c:if test="${!empty listProducts}">
	<table class="tg">
	<tr>
		<th width="80">Product ID</th>
		<th width="80">Brand</th>
		<th width="120">Product Name</th>
		<th width="80">Price</th>
		<th width="120">Category</th>
		<th width="120">Description</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listProducts}" var="product">
		<tr>
			<td>${product.productId}</td>
			<td>${product.brand}</td>
			<td>${product.productName}</td>
			<td>${product.price}</td>
			<td>${product.category}</td>
			<td>${product.description}</td>
			<td><a href="<c:url value='/editProduct/${product.productId}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeProduct/${product.productId}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
<br>
</div>

<br>

<!-- Footer -->
<footer class="footer" id="footer1">
   <div class="container">
     <div class="row">
        <div class="col-sm-6">
           <span class="copyright text-inverse"><h4>Copyright © V Electronics Inc. 2016</h4></span>
        </div>
        <div class="col-sm-6">
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="https://www.instagram.com/vishalverma31/"><i class="fa fa-2x fa-fw fa-instagram text-inverse"></i></a>
                <a href="https://twitter.com/Vishal_MOSES/"><i class="fa fa-2x fa-fw fa-twitter text-inverse"></i></a>
                <a href="https://www.facebook.com/vishal.verma.94009841"><i class="fa fa-2x fa-fw fa-facebook text-inverse"></i></a>
              </div>
            </div>
        </div>
      </div>		
    </div>
</footer>

</body>
</html>