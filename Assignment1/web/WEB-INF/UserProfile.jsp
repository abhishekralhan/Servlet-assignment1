<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function passwordAndConfirmPasswordCheck() {
		var password = document.getElementById("password").value;
		var confirmPassword = document.getElementById("confirmPassword").value;
		if (password == confirmPassword) {
			return true;
		} else {
			alert("Your password and confirm password donot match");
			return false;
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ShowUserProfileServlet" method="post"
		onsubmit="return passwordAndConfirmPasswordCheck(this)">
		<table>
			<tr>
				<td>Name</td>
			</tr>
			<tr>
				<td><input type="text" required="required" name="firstName"
					placeholder="FirstName" id="firstName"></td>
				<td><input type="text" required="required" name="lastName"
					placeholder="Lastname"></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
			</tr>
			<tr>
				<td colspan="2"><input type="date" required="required"
					name="dob"></td>
			</tr>


			<tr>
				<td>Gender</td>
			</tr>
			<tr>
				<td><input type="radio" name="gender" value="Male" checked>Male</td>
				<td><input type="radio" name="gender" value="Female">Female</td>
			</tr>
			<tr>
				<td>Father's Name</td>
			</tr>
			<tr>
				<td><input type="text" required="required" name="fatherName"></td>
			</tr>
			<tr>
				<td>Your email address</td>
			</tr>
			<tr>
				<td><input type="email" required="required" name="email"
					placeholder="Email"
					value="<%=request.getSession().getAttribute("username")%>"></td>
			</tr>
			<tr>
				<td>Create a password</td>
			</tr>
			<tr>
				<td><input type="password" required="required" name="password"
					id="password"></td>
			</tr>
			<tr>
				<td>Confirm your password</td>
			</tr>
			<tr>
				<td><input type="password" required="required"
					name="confirmPassword" id="confirmPassword"
					onchange="return passwordAndConfirmPasswordCheck(this)"></td>
			</tr>

			<tr>
				<td>Contact No.</td>
			</tr>
			<tr>
				<td><input type="text" required="required" name="contactNo"
					maxlength="10"></td>
			</tr>
			<tr>
				<td>Country</td>
			</tr>
			<tr>
				<td><input type="text" required="required" name="country"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Create Profile"></td>
			</tr>

		</table>
	</form>
</body>
</html>