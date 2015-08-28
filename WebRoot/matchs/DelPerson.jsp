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
<style type="text/css">
<!--Table Style-->
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

<body>
	<% Unit unit = (Unit)request.getSession().getAttribute("_currentUnit_");
		PersonDao dao = new PersonDao();
		List<Map> list  = dao.queryPersonByUnitId(unit.getUnitId());
	%> 
	<div  align="center"  id="content">
			<center>
				<h2>
					To remove, click the Remove link
				</h2>
			</center>
			<div id="line"></div>  
			<br/>
	<table class="bordered">
	<tr><th>The person's name</th><th>Age</th><th>Gender</th><th>Phone</th><th>Delete</th></tr>
		<% for(Map map : list){
			out.print("<tr>");
			out.print("<td>");
			out.print(map.get("PERSON_NAME"));
			out.print("</td>");
			out.print("<td>");
			out.print(map.get("AGE"));
			out.print("</td>");
			out.print("<td>");
			if("M".equals((String)map.get("Gender"))){
				out.print("Male");
			}else{
				out.print("Female");
			}
			out.print("</td>");
			out.print("<td>");
			out.print(map.get("TELEPHONE"));
			out.print("</td>");
			out.print("<td>");
			out.print("<a href='DelPerson?personId="+map.get("PERSON_ID")+"'>Delete</a>");
			out.print("</td>");
			out.print("</tr>");
		} %>
		</table>
	</div>
</body>
</html>
