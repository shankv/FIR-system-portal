<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>
<style >

.error{color:red
}
</style>
  
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/login.css">

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
.chota{
width:400px;
float:right;}
</style>
	
	
	
</head>

<body>
	
	<div style="width:100%;background-color:#ffcc99;">
      <x style="font-family: 'Fredericka the Great', cursive;font-size:60px;font-color:red; margin-left:20px;">fir system</x>
      <button class="btn button"><a href="${pageContext.request.contextPath}/index.jsp" style="text-decoration:none;color:white;">Home</a></button>
 </div> 
	<h4 Style="color:white;float:right;">* field only can change</h4>
	
<div class="login" style="width:600px;">
		    <h2 Style="color:white;margin-left:100px;">Welcome to missing FIR updatation</h2>
		  <div class="login-triangle" style="margin-top:-30px;"></div>
		    <h2 class="login-header" style="height:10px;">Update</h2>
    
		<form:form action="home" modelAttribute="missing"  class="login-container">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					 
					 <p class="chota"><form:input path="name" type="text"   placeholder="Name" readonly="true"/>
						 <form:errors path="name" cssClass="error"/></p>
						 
				   <p class="chota">Gender:<form:radiobutton path="gender" value="Male" label="Male" />
					<form:radiobutton path="gender" value="Female" label="Female" />
					<form:errors path="gender" cssClass="error"/></p>
					
				    <p class="chota"><form:input path="age" type="text"   placeholder="age" readonly="true"/>
						 <form:errors path="age" cssClass="error"/></p>		
						 
				   <p class="chota"> <form:input path="dob" type="text"   placeholder="Date Of Birth" readonly="true"/>
						 <form:errors path="dob" cssClass="error"/></p>	
						 
				  <p class="chota" ><form:input path="adharNo" type="text"   placeholder="Adhar No" readonly="true"/>
						 <form:errors path="adharNo" cssClass="error"/></p>		
				   <p  class="chota"><form:input path="missingDate" type="text"   placeholder="Missing Date" readonly="true"/>
						 <form:errors path="missingDate" cssClass="error"/></p>	
						 
				 <p class="chota"><form:input path="missingTime" type="text"   placeholder="Missing Time" readonly="true"/>
						 <form:errors path="missingTime" cssClass="error"/></p>	
						 
				 <p class="chota"><form:input path="missingPlace" type="text"   placeholder="Missing Place" readonly="true"/>
						 <form:errors path="missingPlace" cssClass="error"/></p>
						 
						 
				<p><form:input path="status" type="text"  readonly="true" id="aaaa" placeholder="status" />
				    
                            
						 <form:errors path="status" cssClass="error"/></p>
				
				 <p><form:input path="discription" type="text"  readonly="true"  placeholder="Discription"/>
						 <form:errors path="discription" cssClass="error"/></p>
						 
						  <p><input type="submit" value="OK"></p>	
				 		 				 			 			 		 			  
			
		</form:form>
	
		
	
	</div>

</body>

</html>

				   








