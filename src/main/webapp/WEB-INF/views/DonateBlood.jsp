<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Donate Blood Form</title>
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
		<h3>DONOR BLOOD FORM</h3>
	</center>
	<div id="myAlert" class="alert alert-info collapse">
		<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Loading!!</strong>
	</div>
	<div class="col-md-5"
		style="background-image: url('images/54a6d3001f64eeb3a1a19eeb5266a028.jpg');">

		<form:form
			action="/BloodBankManagementSystem_SpringMVC/saveDonateBloodDetails"
			method="post" commandName="donateForm" novalidate="novalidate">
			<div class="form-group">
				<label for="donateForm">User Name</label>
				<form:input path="username" class="form-control" id="donateForm"
					placeholder="User Name" />
			</div>
			<div>
				<font color="red"><form:errors path="username" /></font>
			</div>
			<div class="form-group">
				<label for="donateForm">Donor-ID</label>
				<form:input path="patient_id" class="form-control" id="donateForm"
					placeholder="Donor_ID" />
			</div>
			<div>
				<font color="red"><form:errors path="patient_id" /></font>
			</div>
			<div class="form-group">
				<label for="donateForm">Patient-Name</label>
				<form:input path="patientname" class="form-control" id="donateForm"
					placeholder="Patient_Name" />
			</div>
			<div>
				<font color="red"><form:errors path="patientname" /></font>
			</div>

			<div class="form-group">
				<label for="donateForm">Time Of The Day</label>
				<form:input path="time_of_the_day" class="form-control"
					id="donateForm" placeholder="Time Of The Day" />
			</div>
			<div>
				<font color="red"><form:errors path="time_of_the_day" /></font>
			</div>

			<div class="form-group">
				<label for="donateForm">Glucose Levels</label>
				<form:input path="glucose_level" class="form-control"
					id="donateForm" placeholder="Glucose Levels" />
			</div>
			<div>
				<font color="red"><form:errors path="glucose_level" /></font>
			</div>

			<div class="form-group">
				<label for="donateForm">Notes</label>
				<form:input path="notes" class="form-control" id="donateForm"
					placeholder="Notes" />
			</div>
			<div>
				<font color="red"><form:errors path="notes" /></font>
			</div>
			<button id="button" class="btn btn-primary" type="submit">Donate
				Blood</button>
		</form:form>
</body>
</html>