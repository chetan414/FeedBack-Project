<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: dodgerblue;
	color: white;
	min-width: 50px;
	text-align: center;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
}

.input-field:focus {
	border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
	background-color: lightblue;
	color: white;
	padding: 15px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.btn:hover {
	opacity: 1;
}
</style>
</head>
<body>


	<form action="createFaculties" style="max-width: 500px; margin: auto">
		<h2>Create Faculties</h2>
		<div class="input-container">
			<i class="fa fa-user icon"></i> <input class="input-field"
				type="text" placeholder="Faculty Name" name="name">
		</div>

		<div class="input-container">
			<i class="fa fa-envelope icon"></i> <input class="input-field"
				type="text" placeholder="Email" name="email">
		</div>

		<div class="input-container">
			<i class="fa fa-key icon"></i> <input class="input-field"
				type="password" placeholder="Password" name="password">
		</div>

		<div class="input-container">
			<i class="fa fa-phone icon"></i> <input class="input-field"
				type="tel" placeholder="Faculty Phone Number" name="phone">
		</div>

		<div class="input-container">
			<i class="fa fa-money icon"></i> <input class="input-field"
				type="text" placeholder="Faculty salary" name="salary">
		</div>

		<div class="input-container">
			<i class="fa fa-language icon"></i> <select class="input-field"
				placeholder="Faculty skill" name="skills">
				<option value="Java">Java</option>
				<option value="JS">JS</option>
				<option value="Python">Python</option>
				<option value="HTML">HTML</option>
				<option value="CSS">CSS</option>
				<option value="C#">C#</option>
			</select>
		</div>

		<button type="submit" class="btn">Register</button>
	</form>

</body>
</html>