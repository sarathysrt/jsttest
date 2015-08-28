<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Verizon Sports Management System</title>
	  
     
        <link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css" />
        <link rel="stylesheet" type="text/css" href="<%=basePath %>css/style1.css" />
    

  </head>
  
  <body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
        <div class="container">
            <div class="header">
                <strong>Verizon Sports Management System</strong> 
                <span class="right">
                    <a href="<%=basePath %>Login.jsp">
                        <strong>Logout</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
            <h1>Organizer Dashboard </h1>
            <div class="content">
            <!-- class="bmenu" -->
                <ul >
                    <li><a href="<%=basePath %>organizations/AddItems.jsp">Event Creation</a></li>
                    <li><a href="<%=basePath %>organizations/SelItems.jsp">Events</a></li>
                     <li><a href="<%=basePath %>organizations/signup.jsp">Registration details</a></li>
                     <li><a href="<%=basePath %>organizations/SelItemshow.jsp">View Results</a></li>
                    <!-- <li><a href="<%=basePath %>organizations/award.jsp">Prizes management</a></li>
                    <li><a href="<%=basePath %>organizations/updatepassword.jsp">Password change</a></li>
                     --> 
                </ul>
            </div>
        </div> 
    </body>
</html>
