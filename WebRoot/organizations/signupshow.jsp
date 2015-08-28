<%@ page language="java" import="java.util.*,com.sports.model.queries.*,com.sports.model.entities.*" pageEncoding="UTF-8"%>

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

table {  
*border-collapse: collapse; /* IE7 and lower */  
border-spacing: 0;  
width: 100%;  
}  
  
.bordered {  
border: solid #ccc 1px;  
-moz-border-radius: 6px;  
-webkit-border-radius: 6px;  
border-radius: 6px;  
-webkit-box-shadow: 0 1px 1px #ccc;  
-moz-box-shadow: 0 1px 1px #ccc;  
box-shadow: 0 1px 1px #ccc;  
}  
  
.bordered tr:hover {  
background: #617A94;  
-o-transition: all 0.1s ease-in-out;  
-webkit-transition: all 0.1s ease-in-out;  
-moz-transition: all 0.1s ease-in-out;  
-ms-transition: all 0.1s ease-in-out;  
transition: all 0.1s ease-in-out;  
}  
  
.bordered td, .bordered th {  
border-left: 1px solid #ccc;  
border-top: 1px solid #ccc;  
padding: 10px;  
text-align: left;  
}  
  
.bordered th {  
background-color: #dce9f9;  
background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));  
background-image: -webkit-linear-gradient(top, #007FA7, #617A94);  
background-image: -moz-linear-gradient(top, #007FA7, #617A94);  
background-image: -ms-linear-gradient(top, #007FA7, #617A94);  
background-image: -o-linear-gradient(top, #007FA7, #617A94);  
background-image: linear-gradient(top, #007FA7, #617A94);  
-webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;  
-moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;  
border-top: none;  
text-shadow: 0 1px 0 rgba(255,255,255,.5);  
}  
  
.bordered td:first-child, .bordered th:first-child {  
border-left: none;  
}  
  
.bordered th:first-child {  
-moz-border-radius: 6px 0 0 0;  
-webkit-border-radius: 6px 0 0 0;  
border-radius: 6px 0 0 0;  
}  
  
.bordered th:last-child {  
-moz-border-radius: 0 6px 0 0;  
-webkit-border-radius: 0 6px 0 0;  
border-radius: 0 6px 0 0;  
}  
  
.bordered th:only-child{  
-moz-border-radius: 6px 6px 0 0;  
-webkit-border-radius: 6px 6px 0 0;  
border-radius: 6px 6px 0 0;  
}  
  
.bordered tr:last-child td:first-child {  
-moz-border-radius: 0 0 0 6px;  
-webkit-border-radius: 0 0 0 6px;  
border-radius: 0 0 0 6px;  
}  
  
.bordered tr:last-child td:last-child {  
-moz-border-radius: 0 0 6px 0;  
-webkit-border-radius: 0 0 6px 0;  
border-radius: 0 0 6px 0;  
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
			<br/>
			<div  align="center"  id="content">
	<table class="bordered">
	<tr><th>Athlete</th><th>Sex</th><th>Age</th><th>Organization</th><th>Phone</th></tr>
	<% 
	String itemId = request.getParameter("itemId");
	int id = Integer.parseInt(itemId);
	MatchDao dao = new MatchDao();
	PersonDao dao1 = new PersonDao();
	List<Match> list =dao.queryMatchsByItemId(id);
	int n=0;
	for(Match m : list){ 
		Person p = dao1.queryPersonById(String.valueOf(list.get(n).getPersonId()));
	
			out.print("<tr>");
			out.print("<td>");
			out.print(p.getPersonName());
			out.print("</td>");
			out.print("<td>");
			out.print("M".equals(p.getSex())?"Male":"Female");
			out.print("</td>");
			out.print("<td>");
			out.print(p.getAge());
			out.print("</td>");
			out.print("<td>");
			out.print(p.getUnitId());
			out.print("</td>");
			out.print("<td>");
			out.print(p.getTelephone());
			out.print("</td>");
			out.print("</tr>");
			n++;
			}
		 %>
	<tr>
	</table><br/>
	<h2><a href="organizations/signup.jsp">Return</a></h2>
	</div>
  </body>
</html>
