<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Universities Games Management System</title>
	</head>

	<body>
		<div style="height: 202px;">
			<div dvwidget="html.richtext" class="richText">
				<div style="text-align: center;">
					<span
						style="font-family: 'Times New Roman'; font-size: -webkit-xxx-large;"><br />
					</span>
				</div>
				<div style="text-align: center;">
					<span
						style="font-family: 'Times New Roman'; font-size: -webkit-xxx-large;">Universities Games Management System</span>
				</div>
			</div>
		</div>
		<div style="height: 202px;" align="center">
			<a href="matchs/SelMatch.jsp"><h2>Entrants Registration</h2></a>
			<a href="matchs/DelMatch.jsp"><h2>View History Registration</h2></a>
			<a href="matchs/AddPerson.jsp"><h2>Registration personnel participating group</h2></a>
			<a href="matchs/DelPerson.jsp"><h2>Delete entry group of people</h2></a>
			<a href="Login.jsp"><h2>drop out</h2></a>
		</div>
	</body>
</html>
