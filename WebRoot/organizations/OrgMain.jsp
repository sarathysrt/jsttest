<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Universities Games Management System</title>
	  
     
        <link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css" />
        <link rel="stylesheet" type="text/css" href="<%=basePath %>css/style1.css" />
    

  </head>
  
  <body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
        <div class="container">
            <div class="header">
                <strong>Universities Games Management System</strong> 
                <span class="right">
                    <a href="<%=basePath %>Login.jsp">
                        <strong>Logout</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
            <h1>Management committee: </h1>
            <div class="content">
            <!-- class="bmenu" -->
                <ul >
                    <li><a href="<%=basePath %>organizations/AddItems.jsp">Project announcement</a></li>
                    <li><a href="<%=basePath %>organizations/SelItems.jsp">project management</a></li>
                     <li><a href="<%=basePath %>organizations/signup.jsp">Check Registration</a></li>
                     <li><a href="<%=basePath %>organizations/SelItemshow.jsp">View Results</a></li>
                    <li><a href="<%=basePath %>organizations/award.jsp">Prizes management</a></li>
                    <li><a href="<%=basePath %>organizations/updatepassword.jsp">Password change</a></li> 
                </ul>
            </div>
        </div> 
    </body>
</html>
