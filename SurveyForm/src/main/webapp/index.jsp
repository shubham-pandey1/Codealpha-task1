<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code Alpha : Survey</title>

<style type="text/css">
.cs {
	background: rgb(148, 148, 233);
	background: -moz-radial-gradient(circle, rgba(148, 148, 233, 1) 0%,
		rgba(246, 100, 100, 1) 100%);
	background: -webkit-radial-gradient(circle, rgba(148, 148, 233, 1) 0%,
		rgba(246, 100, 100, 1) 100%);
	background: radial-gradient(circle, rgba(148, 148, 233, 1) 0%,
		rgba(246, 100, 100, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#9494e9",
		endColorstr="#f66464", GradientType=1);
}

.bg {
	background: rgb(34,53,195);
	background: -moz-linear-gradient(0deg, rgba(34,53,195,1) 0%, rgba(250,14,209,1) 100%);
	background: -webkit-linear-gradient(0deg, rgba(34,53,195,1) 0%, rgba(250,14,209,1) 100%);
	background: linear-gradient(0deg, rgba(34,53,195,1) 0%, rgba(250,14,209,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#2235c3",endColorstr="#fa0ed1",GradientType=1);
	
}
</style>
<%@include file="Allcomponent/boot.jsp"%>
</head>
<body class="cs">
<%@include file="Allcomponent/navbar.jsp" %>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous">
</script>
	<%
		
	  	String fa = (String)session.getAttribute("fmsg");
	  	
		Format f = new SimpleDateFormat("HH.mm.ss");
		String time = f.format(new Date());
	%>
	<% if(fa != null){ %>
			  <div class="toast-container position-fixed bottom-0 end-0 me-2 mb-3 p-0 toast" role="alert" aria-live="assertive" aria-atomic="true">
			  <div class="toast-header pb-1 mb-0">
			     
			    
			      <c:if test="${ not empty fmsg}">
			      <strong class="me-auto text-danger "><i class="fa-solid fa-circle-xmark fa-beat me-2"></i>Cart Message</strong>
			      </c:if>
			      <small class="ms-4"><%= time%></small>
			   	 <button type="button" class="btn-close ms-2" data-bs-dismiss="toast" aria-label="Close"></button>
			      
			  </div>
			   
			    <c:if test="${ not empty fmsg}">
			    <div class="toast-body text-danger p-1 m-0 text-center">
			      ${fmsg}
			    </div>
			    <c:remove var="fadd" scope="session"/>
			    </c:if>
			</div>
			<%} %>
	<div class="container mb-5 ">
	<div class="text-center text-light mt-2">
		<h2>Survey Form</h2>
		<h6>Thank you for visiting our website.You have been</h6>
		<h6>Selected to participate in a brief customer satisfaction</h6>
		<h6>survey to let us know how we can improve your </h6>
		<h6>experience.</h6>
	</div>
		<div class="row mt-3 justify-content-center">
			<div class="col-md-7 me-5 co mb-3 p-4 bg-body-secondary justify-content-left rounded-5">
			<form action="Servey" method="post">
				<div class="mb-3">
					<label for="formGroupExampleInput" class="form-label">Name</label> 
					<input type="text" class="form-control"
						id="formGroupExampleInput" placeholder="Name" name="name" required="required">
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Email</label>
					<input type="email" class="form-control" id="formGroupExampleInput2" placeholder="Email" name="email" required="required">
				</div>
				
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Which option best Describe you?</label>
				<select class="form-select" aria-label="Default select example" name="option" required="required">
				  <option selected>---Select---</option>
				  <option value="student">Student</option>
				  <option value="teacher">Teacher</option>
				  <option value="job">Job</option>
				  <option value="other">Other</option>
				</select>
			</div>
				
				<div class="mb-3 mt-3">
					<label for="formGroupExampleInput" class="form-label">The domain of Internship available are...</label> 
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="java" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckIndeterminateDisabled">
					    Java
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="js" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckDisabled">
					    JavaScript
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="react" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    React
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="python" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckIndeterminateDisabled">
					    Python
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="sprng" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckDisabled">
					    Spring
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="django" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    Django
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="c" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    C
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="c#" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckDisabled">
					    C#
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="c++" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    C++
					  </label>
					</div>
					<div class="form-check ms-4">
					  <input class="form-check-input" type="checkbox" value="angular" id="flexCheck" name = "check">
					  <label class="form-check-label" for="flexCheckCheckedDisabled">
					    Angular
					  </label>
					</div>
				</div>
				<div class="mb-3 mt-3">
					<label for="formGroupExampleInput" class="form-label">If your domain not available or any suggestion</label> 
					<div class=" ms-2">
					  <textarea class="form-control" placeholder="Leave a suggestion here..." id="Textarea" style="height: 100px" name= "comment"></textarea>
					  
					</div>
				</div>
				<div class="d-inline-flex gap-5 ms-3">
				  <button class="btn btn-success ms-5 col-md-12" type="submit" >Submit</button>
				  <button class="btn btn-warning  col-md-12" type="reset">Reset</button>
				</div>
			  </form>
			</div>
		</div>
	</div>
	<script  src="Allcomponent/main.js"></script>
	<%@ include file= "Allcomponent/Footer.jsp" %>
</body>
</html>