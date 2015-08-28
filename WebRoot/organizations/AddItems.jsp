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
<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/style1.css" />
		<link rel="stylesheet" media="screen" href="css/styles.css">
		<style type="text/css">

#sel{
      -webkit-border-radius:5px ; -moz-border-radius:5px;
     border-width:1px 137px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 5 75 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}
</style>
	</head>

	<body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
		<div class="header">
				<strong>Universities Games Management System</strong>
				<span class="right"> <a href="organizations/OrgMain.jsp"> <strong>Return to the menu</strong>
				</a> </span>
				<span class="right"> <a href="/sports/Login.jsp"> <strong>Logout</strong>
				</a> </span>
				<div class="clr"></div>
			</div>
		<div align="center" id="content">

			<div id="line"></div>
			<form action="AddItem" method="post" class="contact_form">
				<ul>
					<li>
						<h2>Please fill in the necessary content</h2>
					</li>
					<li>
						<label >
							project name:
						</label>
						<input type="text" name="itemname" placeholder=" " required />
					</li>
					<li>
						<label >
							Project Description:
						</label>
						<textarea name="itemsynopsis" cols="40" rows="6" placeholder=" " required /></textarea>
					</li>
				<li>
					<label>Unit restrictions:</label>
						<select name="unitlimit" id="sel" style="color:white;">
						<option value="3" style="color:black;">Staff groups</option>
						<option value="4" style="color:black;">Student Group</option>
					</select>
				</li>
					 <li>
					<label>Gender restrictions:</label>
						<select name="sexlimit" id="sel" style="color:white;">
						<option value="M" style="color:black;">Male</option>
						<option value="F" style="color:black;">Female</option>
					</select>
					</li>
					 <li>
						<label >
							The minimum age limit:
						</label>
						<input type="text" name="agelimitmin" placeholder="16" required />
					</li>
										 <li>
						<label >
							The maximum age limit:
						</label>
						<input type="text" name="agelimitmax" placeholder="25" required />
					</li>
					  <li>
						<label >
							Limit the number of applicants per unit:
						</label>
						<input type="text" name="unitnumlimit" placeholder="4" required />
					</li>
										  <li>
						<label >
							Total enrollment restrictions:
						</label>
						<input type="text" name="totalnumlimit" placeholder="21" required />
					</li>
					  <li>
						<label >
							Registration deadline:
						</label>
						<input type="text" name="stoptime" placeholder="20131111" required />
					</li>
					  <li>
						<label >
							Final Title:
						</label>
						<input type="text" name="processName" value=" " required />
					</li>
					  <li>
						<label >
							Final Place:
						</label>
						<input type="text" name="processPlace" placeholder="0" required />
					</li>
					  <li>
						<label >
							Final number:
						</label>
						<input type="text" name="numEachGroup" placeholder="2" required />
					</li>
					  <li>
						<label >
							Final Time(yyyyMMdd):
						</label>
						<input type="text" name="processTime" placeholder="20131212" required />
					</li>
					<li>
        				<button class="submit" type="submit">Submit</button>
       			 		</li>
				</ul>
			</form>
		</div>
	</body>
</html>
