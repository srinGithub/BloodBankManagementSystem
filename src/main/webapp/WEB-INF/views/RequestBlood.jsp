<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Request Blood Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#button').click(function() {
			$('#myAlert').show('fade');
		});
	});
</script>
</head>
<body>
	<center>
		<h3>REQUEST BLOOD FORM</h3>
	</center>
	<div id="myAlert" class="alert alert-info collapse">
		<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Loading!!</strong>
	</div>
	<div class="col-md-5"
		style="background-image: url('images/54a6d3001f64eeb3a1a19eeb5266a028.jpg');">
		<form:form
			action="/BloodBankManagementSystem_SpringMVC/saveRequestBloodDetails"
			method="post" commandName="requestForm" novalidate="novalidate">

			<div class="form-group">
				<label for="requestForm">Requestor Id</label>
				<form:input path="id" class="form-control" id="requestForm"
					placeholder="Requester Id:" />
			</div>
			<div>
				<font color="red"><form:errors path="id" /></font>
			</div>

			<div class="form-group">
				<label for="requestForm">User Name</label>
				<form:input path="username" class="form-control" id="requestForm"
					placeholder="User Name" />
			</div>
			<div>
				<font color="red"><form:errors path="username" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Patient Name</label>
				<form:input path="patientname" class="form-control" id="requestForm"
					placeholder="Patient Name" />
			</div>
			<div>
				<font color="red"><form:errors path="patientname" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Blood Group</label>
				<form:input path="required_blood_group" class="form-control"
					id="requestForm" placeholder="Blood Group" />
			</div>
			<div>
				<font color="red"><form:errors path="required_blood_group" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">City</label>
				<form:input path="city" class="form-control" id="requestForm"
					placeholder="City" />
			</div>
			<div>
				<font color="red"><form:errors path="city" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Doctor Name</label>
				<form:input path="doctor_name" class="form-control" id="requestForm"
					placeholder="Doctor Name" />
			</div>
			<div>
				<font color="red"><form:errors path="doctor_name" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Hospital Name&Address</label>
				<form:input path="hospital_address" class="form-control"
					id="requestForm" placeholder="Hospital Name&Address" />
			</div>
			<div>
				<font color="red"><form:errors path="hospital_address" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Date Of Requirement</label>
				<form:input type="date" path="date_of_requirement" class="form-control"
					id="requestForm" placeholder="Date Of Requirement" />
			</div>
			<div>
				<font color="red"><form:errors path="date_of_requirement" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Contact Name</label>
				<form:input path="contact_name" class="form-control"
					id="requestForm" placeholder="Contact Name" />
			</div>
			<div>
				<font color="red"><form:errors path="contact_name" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Contact Number</label>
				<form:input path="contact_number" class="form-control"
					id="requestForm" placeholder="Contact Number" />
			</div>
			<div>
				<font color="red"><form:errors path="contact_number" /></font>
			</div>
			<div class="form-group">
				<label for="requestForm">Email</label>
				<form:input type="email" path="email_id" class="form-control" id="requestForm"
					placeholder="Email" />
			</div>
			<div>
				<font color="red"><form:errors path="email_id" /></font>
			</div>

			<div class="form-group">
				<label for="requestForm">Message</label>
				<form:input path="message" class="form-control" id="message"
					placeholder="Message" />
			</div>
			<div>
				<font color="red"><form:errors path="message" /></font>
			</div>

			<button id="button" class="btn btn-primary" type="submit">Request
				Blood</button>
				<a href="logout">Logout</a>
		</form:form>

	</div>


</body>
</html>