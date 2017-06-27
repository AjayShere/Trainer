<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Perform Transaction</title>
</head>


<body ng-app="myApp">
	<div ng-controller="myCntrl">
		



		<form:form method="POST"
			commandName="/BaseCodeSlice_BankManagementSystem/mvc/addShedule?AccNo=${msg}"
			modelAttribute="shedule" name="Form">

			<td><button>
					<a
						href="http://localhost:8086/BaseCodeSlice_BankManagementSystem/mvc/home.jsp?AccNo=${msg}">Home</a>
				</button></td>

			<table>

				<tr>
					<td>Trainer name :</td>
					<td><form:input path="TrainerName"
							placeholder="TrainerName" maxlength="30"
							ng-model="TrainerName" required="true"
							ng-pattern="/^[A-Za-z\b \b]{1,30}$/" /></td>
					<td><form:errors path="TrainerName"
							cssClass="error" /></td>
					<td><span
						ng-show="Form.TrainerName.$error.required && !Form.TrainerName.$pristine">Transaction
							description is required</span></td>

					<td><span
						ng-show="Form.TrainerName.$error.pattern && !Form.TrainerName.$pristine">Only
							Alphabets are required</span></td>
				</tr>

				<tr>
					<td>Duration :</td>
					<td><form:select path="Duration">
							<option value="" disabled selected>Select Duration</option>
							<option value="Duration">120</option>
							<option value="Duration">180</option>
							<option value="Duration">240</option>
						</form:select></td>
					<td><form:errors path="Duration" cssClass="error" /></td>

				</tr>

				<tr>
					<td>College Name :</td>
					<td><form:input path="CollegeName"
							placeholder="CollegeName" maxlength="20"
							ng-pattern="/^[0-9\b.\b]{1,10}$/" ng-model="CollegeName"
							required="true" /></td>
					<td><form:errors path="CollegeName" cssClass="error" /></td>
					<td><span
						ng-show="Form.CollegeName.$error.required && !Form.CollegeName.$pristine">Transaction
							amount is required</span></td>
					<td><span
						ng-show="Form.CollegeName.$error.pattern && !Form.CollegeName.$pristine">Only
							Numbers are required</span></td>

				</tr>
				
				<tr>
					<td>TrainerId :</td>
					<td><form:input path="TrainerId"
							placeholder="TrainerId" maxlength="30"
							ng-model="TrainerId" required="true"
							ng-pattern="/^[A-Za-z\b \b]{1,30}$/" /></td>
					<td><form:errors path="TrainerId"
							cssClass="error" /></td>
					<td><span
						ng-show="Form.TrainerId.$error.required && !Form.TrainerId.$pristine">Transaction
							description is required</span></td>
				
				
				<tr>
					<td>Domain:</td>
					<td><form:input path="Domain"
							placeholder="Domain" maxlength="30"
							ng-model="Domain" required="true"
							ng-pattern="/^[A-Za-z\b \b]{1,30}$/" /></td>
					<td><form:errors path="Domain"
							cssClass="error" /></td>
					<td><span
						ng-show="Form.Domain.$error.required && !Form.Domain.$pristine">Transaction
							description is required</span></td>
				
				
				
				<tr>
					<td>Start Date :</td>
					<td><form:input path="StartDate"
							placeholder="StartDate" maxlength="30" type="Date"
							ng-model="StartDate" required="true"
							ng-pattern="/^[A-Za-z\b \b]{1,30}$/" /></td>
					<td><form:errors path="StartDate"
							cssClass="error" /></td>
					<td><span
						ng-show="Form.StartDate.$error.required && !Form.StartDate.$pristine">Transaction
							description is required</span></td>
				
				<tr>
					<td></td>
					<td colspan="2"><button type="submit" value="Add">Submit</button></td>
				</tr>
			</table>
		</form:form>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	<script>
		var app = angular.module('myApp', []);

		app.controller('myCntrl', function($scope) {
			$scope.transactionDescription = "";
			$scope.transactionAmount = "";
			$scope.transactionAmount = "";
		})
	</script>
</body>
</html>