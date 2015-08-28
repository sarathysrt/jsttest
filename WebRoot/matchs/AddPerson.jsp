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
<link rel="stylesheet" type="text/css" href="<%=basePath%>organizations/styles.css">
		<base href="<%=basePath%>">

		<title>Universities Games Management System</title>
		<style type="text/css">
.contact_form{padding-top:40px;}
#sel{
      -webkit-border-radius:5px ; -moz-border-radius:5px;
     border-width:1px 137px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 5 75 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}


.contact_form ul{width:500px}


.contact_form input:focus{ /* add this to the already existing style */
    width:200px;
}

.contact_form input{ /* add this to the already existing style */
	width:180px;
    -moz-transition: padding .25s;
    -webkit-transition: padding .25s;
    -o-transition: padding .25s;
    transition: padding .25s;
}
</style>
	</head>

	<body>
		<div align="center" id="content">
			<div id="line"></div>
			<form action="AddPerson" method="post" class="contact_form">
				<ul>
			<li><h2 style="align:left;font-size:16px;">Registration personnel information</h2><span class="required_notification">* Indicates a required field</span></li>
			<li>
				<label>The person's name:</label>
            			<input type="text" name="personname" placeholder="John" required />
				<span class="form_hint">Contestants name</span>
			</li>
			<li>
				<label>Gender:</label>
					<select name="sex" id="sel" style="color:white;">
					<option value="M" style="color:black;">Male</option>
					<option value="F" style="color:black;">Female</option>
				</select>
			</li>
			<li>
				<label>Personnel Age:</label>
            			<input type="text" name="age" placeholder="20" required />
				<span class="form_hint">Contestants Age</span>
			</li>
			<li>
				<label>contact number:</label>
            			<input type="text" name="tel" placeholder="180****4825" required />
				<span class="form_hint">contact number</span>
			</li>

			<li>
        		<button class="submit" type="submit">Register</button>
       			 </li>
			</ul>				
			</form>
		</div>
	</body>
</html>
