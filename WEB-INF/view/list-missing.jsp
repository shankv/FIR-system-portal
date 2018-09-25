<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List missing</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>missing table</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			<input type="button" value="Logout"
				   onclick="window.location.href='index'; return false;"
				   class="add-button"
			/>
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>PID</th>
					<th>name</th>
					<th>gender</th>
			     	<th>age</th>
				   <th>dob</th>
				 	<th>Adharno</th>
					<th>missing date</th>
				 	<th>missing time</th>
				 	<th>place</th>
				 	<th> status</th>
				 	
					
				</tr>

                 
         
				<!-- loop over and print our customers -->
				<c:forEach items="${missing}" var="tempMissing">					
				<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="missingId" value="${tempMissing.id}" />
					</c:url>	
				
					<tr>
						<td> ${tempMissing.id} </td>
						<td> ${tempMissing.name} </td>
						<td> ${tempMissing.gender} </td>
						<td> ${tempMissing.age} </td>
						<td> ${tempMissing.dob} </td>
						<td> ${tempMissing.adharNo} </td>
						<td> ${tempMissing.missingDate} </td>
						<td> ${tempMissing.missingTime} </td>
						<td> ${tempMissing.missingPlace} </td>
						<td> ${tempMissing.status} </td>
						
						
						<td><a href="${updateLink}"
							   onclick="if (!(confirm('Are you sure you want to update this?'))) return false">update</a>
						
						</td>
						</tr>
					
			   	</c:forEach>
					
				

			</table>
				
		</div>
	
	</div>
	

</body>

</html>









