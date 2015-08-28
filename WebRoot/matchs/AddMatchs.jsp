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
<link rel="stylesheet" type="text/css" href="<%=basePath%>organizations/styles.css">
<title>Universities Games Management System</title> 
<style type="text/css">

	.title {background-color:rgba(0,0,0,0.56); text-align:center; width:100%; position:fixed; top:0; left:0; padding:5px 0;}
.title a {color:#FFF; text-decoration:none; font-size:16px; font-weight:bolder; line-height:24px;}

body{
	background-color: transparent;
    background-repeat: repeat, no-repeat;
    background-position: center center;
    background-attachment: fixed;
    -webkit-background-size: auto, cover;
    -moz-background-size: auto, cover;
    -o-background-size: auto, cover;
    background-size: auto, cover;
	color: #fff;
	font-family: 'Josefin Slab', Arial, sans-serif;
	font-size: 13px;
}

#line {
	width: 670px;
	height: 2px;
	margin: 0 auto;
	background-color: #3f67c0;
}

#sel{
      -webkit-border-radius:5px ; -moz-border-radius:5px;
     border-width:1px 137px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 5 75 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}


.contact_form li{
	border-bottom:0px;
}
.contact_form li:first-child, .contact_form li:last-child {
	border-bottom:0px;
}
.contact_form input:focus{ /* add this to the already existing style */
    width:230px;
}

.contact_form input{ /* add this to the already existing style */
    -moz-transition: padding .25s;
    -webkit-transition: padding .25s;
    -o-transition: padding .25s;
    transition: padding .25s;
}

.contact_form label{
	width: 150px;margin-top: 3px;
display:inline-block;
float:left;
padding-left:30px;
}
</style>
</head>

<body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/bj1.jpg);"> 
	<div align="center" id="content" style="padding-top:50px;">
			<center>
				<div class="title"><a href="javascript:void(0)">
					Participating group registration
				</a></div>
			</center>
			<div id="line"></div>  
			<form action="AddUnit" method="post" class="contact_form">
			<ul>
			<li>
				<label>Participating group name:</label>
            			<input type="text" name="unitname" placeholder="红队" required />
				<span class="form_hint">Fill participating group name</span>
			</li>
			
			<li>
				<label>Login Username:</label>
            			<input type="text" name="username" placeholder="Javin" required />
				<span class="form_hint">Fill system login account name</span>
			</li>
			<li>
				<label>login password&nbsp;&nbsp;&nbsp;&nbsp;:</label>
            			<input type="password" name="password" placeholder="password" required />
				<span class="form_hint">Fill Password</span>
			</li>
			<li>
				<label>User Group Type: </label>
					<select name="unittype" id="sel" style="color:white;">
					<option value="3" style="color:black;">Staff groups</option>
					<option value="4" style="color:black;">Student Group</option>
				</select>
			</li>
			<li>
        		<button class="submit" type="submit">Register</button>
       			 </li>
			</ul>
			
		</form>
			<% 
			String errorMsg = (String)request.getSession().getAttribute("errorMsg");
			if (errorMsg!=null){
	out.print("<div class='error message' style='color:red'>");
                out.print(" <h3>Oh, wrong login</h3>");
                out.print("<p>Probably because"+errorMsg+"</p>"); 
	out.print("</div>");
	request.getSession().setAttribute("errorMsg",null);
	}
	%>
	</div>
</body>
</html>
