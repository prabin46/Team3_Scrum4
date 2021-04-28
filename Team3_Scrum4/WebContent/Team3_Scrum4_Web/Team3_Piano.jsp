<!--Frank Parker-->
<!DOCTYPE HTML><%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@page import="team3_scrum4.*" %>
<html>
<head>
<title>Team3_Piano</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
	// Get parameters from html form
	String name = request.getParameter("name");
	int numberOfKeys = Integer.parseInt(request.getParameter("numberOfKeys"));
	double price = Double.parseDouble(request.getParameter("price"));
	
	// Create PianoAPI object
	Team3_Piano_API pianoAPI = new Team3_Piano_API();
	
	// Set piano to values passed into pianoAPI CreatePiano method
	Team3_Piano piano = pianoAPI.CreatePiano(name, numberOfKeys, price);
	
	// display properties of newly created piano object
	out.print(piano.toString());
	
%>

</body>
</html>
