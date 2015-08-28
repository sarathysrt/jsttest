<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Verizon Sports Management System</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/style1.css" />
		<link rel="stylesheet" media="screen" href="css/styles.css">
<style type="text/css">
.contact_form {
	padding-top: 40px;
}

</style>
  </head>
  
  <body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
    		<div class="header">
				<strong>Verizon Sports Management System</strong>
				<span class="right"> <a href="organizations/OrgMain.jsp"> <strong>Return to the menu</strong>
				</a> </span>
				<span class="right"> <a href="/sports/Login.jsp"> <strong>Logout</strong>
				</a> </span>
				<div class="clr"></div>
			</div>
			<div id="content">
				
				<div id="line"></div>
				<div id="password" align="center">
					<form action="../UpdatePassword" method="post" class="contact_form">
						<ul>
					<li>
						<h2>change Password</h2>
					</li>
					<li>
						<label >
							Please enter your old password：
						</label>
						<input type="password" name="old" placeholder="******" required />
					</li>
					 <li>
						<label >
							Please enter a new password：
						</label>
						<input type="password" name="new" placeholder="******" required />
					</li>
					 <li>
						<label >
							Please re-enter the new password：
						</label>
						<input type="password" name="new" placeholder="******" required />
					</li>
					<li><button class="submit" type="submit">Modify</button></li>
					</ul>
<!--
						<table>
							<tr>
								<td>Please enter your old password：</td>
								<td><input type="password" name="old">
							</tr>
							<tr>
								<td>Please enter a new password：</td>
								<td><input type="password" name="new">
							</tr>
							<tr>
								<td>Please repeat new password：</td>
								<td><input type="password" name="new">
							</tr>
						</table>
						<input type="submit" value="修改" >-->
					</form>
				</div>
			</div>
  </body>
</html>
