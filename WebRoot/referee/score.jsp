<%@ page language="java" import="java.util.*,com.sports.model.queries.*,com.sports.model.entities.*" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>organizations/styles.css">
	<style type="text/css">
<!--表格样式-->
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
    <div  align="center"  id="content" >
			<center style="color:white">
				<h2>
				Project results
				</h2>
			</center> 
	<table class="bordered" style="color:white">
	<tr><th>Athlete</th><th>Competition results</th><th>Entry rankings</th><th>Input / Modify</th></tr>
		<%   
		int prid= Integer.parseInt(request.getParameter("processId"));
		MatchDao dao = new MatchDao();
		PersonDao dao1 = new PersonDao();
		List<Match> list = dao.queryMatchsByProcessId(prid);
		//List<Match> list = dao.
		int n=0;
		for(Match m : list){
		Person p = dao1.queryPersonById(String.valueOf(list.get(n).getPersonId()));
		
			out.print("<tr>");
			out.print("<td>");
			out.print(p.getPersonName());
			out.print("</td>");
			out.print("<td>");
			out.print(list.get(n).getMatchScore());
			out.print("</td>");
			out.print("<td>");
			int rank = list.get(n).getMatchRank();
			if (rank < 0){
				out.print("");
			}else{
				out.print(list.get(n).getMatchRank());
			}
			out.print("</td>");
			out.print("<td>");
			out.print("<a href='referee/addscore.jsp?matchid=" + list.get(n).getMatchId() + "'>修改/录入</a>");
			out.print("</td>");	
			out.print("</tr>");
			n++;
			}
		  %>
		  		</table>
		  		
		<form action="UpdateMatchAllPid" method="post">
		<input type="hidden" name = "processId" value = "<%= prid %>"> 
		<button class="submit" type="submit">Sure to submit, no modification</button>
		</form>
	</div>
  </body>
</html>
