<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Universities Games Management System</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/style1.css" />
		<link rel="stylesheet" media="screen" href="css/styles.css">
<style type="text/css">
.contact_form ul{width:500px;}
</style>
  </head>
  
  <body>
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
					</form>
				</div>
			</div>
  </body>
</html>
