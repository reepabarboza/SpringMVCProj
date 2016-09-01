<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1> ${headerMessage}</h1>
	
	<form:errors path = "student1.*"/>
	
	<form action = "/submitAdmissionForm.html" method = "post">
		<p> Student's name : <input type = "text" name = "studentName">
		</p>
		
		<p> Student's Hobby : <input type = "text" name = "studentHobby">
		</p>
		
		<p> Student's mobile : <input type = "text" name = "studentMobile"> 
		</p>
		
		<p> Student's DOB : <input type = "text" name = "studentDob"> 
		</p>
		
		<p> Student's Skillset : 
			<select name = "studentSkills" multiple>
				<option value = "Java">Java</option>
				<option value = "Dotnet">Dotnet</option>
				<option value = "Csharp">Csharp</option>
			</select>
		</p>
		
		<table>
			<tr>
				<td>Student Country: <input type = "text" name = "studentAddress.country"/>
				<td>Student City: <input type = "text" name = "studentAddress.city"/> <!-- note this -->
			</tr>
		</table>
		
		<input type ="submit" value = "Submit">
	</form>
</body>
</html>