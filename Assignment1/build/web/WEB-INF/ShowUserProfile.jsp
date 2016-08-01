<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		List<String> userProfile = new ArrayList<String>();
		userProfile = (List<String>) (request.getSession().getAttribute("id"));
	%>
	<form action="ShowUserProfile.jsp" method="post">
		<table>
			<tr>
				<td>Name</td>
			</tr>
			<tr>
				<td><input type="text" readonly="readonly"
					value="<%=request.getParameter("firstName") + " " + request.getParameter("lastName")%>"></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
			</tr>
			<tr>
				<td colspan="2"><input readonly="readonly"
					value="<%=request.getParameter("dob")%>"></td>
			</tr>
			<tr>
				<td>Gender</td>
			</tr>
			<tr>
				<td colspan="2"><input readonly="readonly"
					value="<%=request.getParameter("gender")%>"></td>
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