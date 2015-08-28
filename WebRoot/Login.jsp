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
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css" />
<title>Verizon Sports Management System</title>

<%String errorMsg = (String)request.getSession().getAttribute("errorMsg"); %>
<style type="text/css">
.title {background-color:rgba(0,0,0,0.56); text-align:center; width:100%; position:fixed; top:0; left:0; padding:5px 0;}
.title a {color:#FFF; text-decoration:none; font-size:16px; font-weight:bolder; line-height:24px;}

#sel{
      -webkit-border-radius:5px ; 
      -moz-border-radius:5px;
     border-width:15px 91px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 15 55 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}
</style>
</head>

<body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/bj1.jpg);">
<center>
				<div class="title"><a href="javascript:void(0)">
					Verizon Sports Management System
				</a></div>
			</center>
	<div style="height: 100px;">
		<div dvwidget="html.richtext" class="richText">
			<div style="text-align: center;">
				<span
					style="font-family: 'Times New Roman'; font-size: -webkit-xxx-large;"><br />
				</span>
			</div>
			
		</div>
	</div>
	<div align="center" style="padding-top:15px;">
	<div id ="login" style="height:320px;background-image:url(<%=basePath %>images/login.png);background-repeat: no-repeat;background-position:center;" align="center">
		<form action="LoginIn" method="post" style="padding-top:75px;">
		<div>
			<p>
				<input type="text" placeholder="Username" name="username" style="background-image:url(<%=basePath %>images/name.jpg); border:0;height:45px;width:280px;"/>
			</p>
			<p style="margin-top:20px;">
				<input type="password" placeholder="Password" name="password" style="background-image:url(<%=basePath %>images/name.jpg); border:0;height:45px;width:280px;"/>
			</p>
		</div>
		<div style="padding-top:20px;">
		<div style="margin-left:-110px;">
			<p style="color:white">
				<select id="sel" name="unittype"  style="color:white;">
					<option value="1" style="color:black;">Organizor</option>
					<option value="2" style="color:black;">Jury</option>
					<option value="3" style="color:black;">Employee</option>
					<!-- <option value="4" style="color:black;">Student Group</option> -->
				</select>
			</p>
		</div>
			<div style="margin-left:160px;margin-top:-38px;width:90px;"><input type="submit" value="" style="background-image:url(<%=basePath %>images/sub.jpg);background-repeat: no-repeat;width:105px;height:36px;cursor:pointer;"/></div>			
		</form>
		</div>
</div>
<!--  <div style="margin-top:-55px;"><a href="matchs/AddMatchs.jsp"><img src="<%=basePath %>images/cszzc.png" onmousedown="this.src='<%=basePath %>images/d_cszzc.png'" onmouseout="this.src='<%=basePath %>images/cszzc.png'"/></a></div>
-->
	<% if (errorMsg!=null){
	out.print("<div class='error message' style='color:red'>");
                out.print(" <h3>error</h3>");
                out.print("<p>error"+errorMsg+"</p>"); 
	out.print("</div>");
	request.getSession().setAttribute("errorMsg",null);
	}
	%>
</body>
</html>

