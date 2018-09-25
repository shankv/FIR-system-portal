<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
}
</style>
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/login.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div style="width:100%;background-color:#ffcc99;">
      <x style="font-family: 'Fredericka the Great', cursive;font-size:60px;font-color:red; margin-left:20px;">fir system</x>
      <button class="btn button"><a href="index.jsp" style="text-decoration:none;color:white;">Home</a></button>
 </div> 
    <div class="login">
    <h2 Style="color:white;margin-left:10px;">Welcome to department Login</h2>
  <div class="login-triangle"></div>
    <h2 class="login-header">Log in</h2>
					<form:form action="aa" name="submitForm" method="POST" class="login-container">
					
					 <p><input type="text" name="userName"  placeholder="username"></p>
					    <p><input type="password" name="password" placeholder="Password"></p>
					    <p><input type="submit" value="Log in"></p>
					
					<div style="color: red;margin-left:130px;">${error}</div>
					</div>
					</form:form>
					
					</div>
					
					
					</body>
</html>





  