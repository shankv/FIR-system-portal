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
		  href="${pageContext.request.contextPath}/resources/css/checkbox.css" />
</head>

<body>
<div style="width:100%;background-color:#ffcc99;">
      <x style="font-family: 'Fredericka the Great', cursive;font-size:60px;font-color:red; margin-left:20px;">fir system</x>
      <button class="btn button"><a href="customer/index.jsp" style="text-decoration:none;color:white;">Home</a></button>
 </div> 
  
                    
<div style="margin-top:100px;color:pink;">	

                   </br>
	
                  <div style="float:left;margin-left:300px;">
                          <span class="title"><img src="${pageContext.request.contextPath}/resources/image/register.png" style="width:200px;height:200px;"/>
                         <a href="${pageContext.request.contextPath}/customer/showFormForAdd" style="text-decoration:none;">
                          <div class="checkBox" >
                                   Missing FIR
								     <svg width="140" height="65" viewBox="0 0 140 65" xmlns="http://www.w3.org/2000/svg">
											    <rect x="10" class="button" width="128.8" height="63.9"/>
											    <rect x="0" y="22.5" class="box" width="20" height="20"/>
											    <polyline class="checkMark" points="4.5,32.6 8.7,36.8 16.5,29.1"/>
				 					 </svg>
                         </div>
                         </a>
                 </div>
				 <div style="float:left;margin-left:100px;">
				         <span class="title"><img src="${pageContext.request.contextPath}/resources/image/status.png" style="width:200px;height:200px;"/>
                        </span>
                         <a href="${pageContext.request.contextPath}/customer/status" style="text-decoration:none;">
						<div class="checkBox">
						   Status
									  <svg width="140" height="65" viewBox="0 0 140 65" xmlns="http://www.w3.org/2000/svg">
									    <rect x="10" class="button" width="128.8" height="63.9"/>
									    <rect x="0" y="22.5" class="box" width="20" height="20"/>
									    <polyline class="checkMark" points="4.5,32.6 8.7,36.8 16.5,29.1"/>
									  </svg>
                       </div>
               </div>

               <div style="float:left;margin-left:100px;">

					 <span class="title"><img src="${pageContext.request.contextPath}/resources/image/login.png" style="width:200px;height:200px;"/>
					</span>
					 <a href="${pageContext.request.contextPath}/login/Login" style="text-decoration:none;">
					<div class="checkBox">
										  Dept. Login
									  <svg width="140" height="65" viewBox="0 0 140 65" xmlns="http://www.w3.org/2000/svg">
									    <rect x="10" class="button" width="128.8" height="63.9"/>
									    <rect x="0" y="22.5" class="box" width="20" height="20"/>
									    <polyline class="checkMark" points="4.5,32.6 8.7,36.8 16.5,29.1"/>
									  </svg>
                   </div>
                   </a>
             </div>
   </div>   
</body>
</html>
