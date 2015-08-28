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
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css" />
		<style type="text/css">

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




#title2 {
	width: 900px;
	margin:0 auto;
	padding-top:35px;
}

#main {
	width: 900px;
	height: 500px;
	margin: 0 auto;
}

#leftMenu {
	width: 230px;
	height: 500px;
	float: left
}

#logintop {
	width: 200px;
	height: 50px;
	background-color: #446DFF;
	margin: 7px;
	margin-top: 0px;
	line-height: 50px;
}

#content {
	width: 670px;
	height: 500px;
	float: left
}

a {
	TEXT-DECORATION: none
}

.title {background-color:rgba(0,0,0,0.56); text-align:center; width:100%; position:fixed; top:0; left:0; padding:5px 0;}
.title a {color:#FFF; text-decoration:none; font-size:16px; font-weight:bolder; line-height:24px;}

</style>
	</head>

	<body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/matbj.jpg);">
	 <div class="header">    
                <strong >Universities Games Management System</strong>
                <span class="right">
                    <a href="<%=basePath %>Login.jsp">
                        <strong>Logout</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
	<% String tname=(String)session.getAttribute("tname");%>
		<div id="title2">
			
		</div>
		<div id="main">
			<div id="leftMenu">
				<iframe frameborder="0" id="lifm" scrolling="no" name="lifm"
					width="100%" height="85%" src="matchs/MatSelect.jsp"></iframe>
			</div>
			<div id="content">
				<iframe id="contest" name="contest" frameborder="0" scrolling="auto"
					width="100%" height="100%"></iframe>
			</div>

		</div>
	</body>
</html>
