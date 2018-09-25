<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Fredericka+the+Great');

.btn{
background-color:black; /* Green */
   float:right;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px 5px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
.button:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}</style>
	

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/login.css">
<style >
.error{color:red}
</style>
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>

   <div style="width:100%;background-color:#ffcc99;">
      <x style="font-family: 'Fredericka the Great', cursive;font-size:60px;font-color:red; margin-left:20px;">fir system</x>
      <button class="btn button"><a href="${pageContext.request.contextPath}/index.jsp" style="text-decoration:none;color:white;">Home</a></button>
 </div> 
	<h4 Style="color:white;float:right;">* field are mendatory</h4>
	 <div class="login" style="width:600px;">
    <h2 Style="color:white;margin-left:100px;">Welcome to missing FIR register</h2>
  <div class="login-triangle" style="margin-top:-30px;"></div>
    <h2 class="login-header" style="height:10px;">Step-1</h2>


		<form:form action="saveCustomer" modelAttribute="customer" method="POST" class="login-container">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			
						 <p><form:input path="firstName" type="text"   placeholder="Your First name*"/>
						 <form:errors path="firstName" cssClass="error"/></p>
						 
						  <p><form:input path="lastName" type="text"   placeholder="Your Last name*"/>
						 <form:errors path="lastName" cssClass="error"/></p>
						 
						  <p><form:input path="email" type="text"   placeholder="Your Email"/>
						 <form:errors path="email" cssClass="error"/></p>
						 
						  
						  
						   <p><form:input path="mobileNo" type="text"   placeholder="Your Mobile no*"/>
						 <form:errors path="mobileNo" cssClass="error"/></p>
						 
					   
					    <p><input type="submit" value="Next"></p>
				</form:form>
				</div>	
					
			
		
</body>

</html>










