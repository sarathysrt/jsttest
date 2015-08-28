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
				<strong>Universities Games Management System</strong>
				<span class="right"> <a href="organizations/OrgMain.jsp"> <strong>Return to the menu</strong>
				</a> </span>
				<span class="right"> <a href="/sports/Login.jsp"> <strong>Logout</strong>
				</a> </span>
				<div class="clr"></div>
			</div>
			<div id="content">
				<% 
				int  awardId= Integer.parseInt(request.getParameter("awardId"));
				AwardDao dao = new AwardDao();
				Award a = dao.queryAwardById(awardId);
				 %>
				<div id="line"></div>
				<div id="password" align="center">
					<form action="UpdateAward" method="post" class="contact_form">
						<ul>
					<li>
						<h2>Change prizes</h2>
					</li>
						<input name="awardId" value=<%=awardId %> required style="visibility: hidden"/>
					<li>
						<label >
							Prizes Name：
						</label>
						<input name="awardName" value=<%=a.getAwardName() %> required />
					</li>
					 <li>
						<label >
							Prizes type：
						</label>
						<input  name="awardSynopsis" value=<%=a.getAwardSynopsis() %> required />
					</li>
					 <li>
						<label >
							Prizes worth ：
						</label>
						<input name="awardCost" value=<%=a.getAwardCost() %> required />
					</li>
					<li><button class="submit" type="submit">Change</button></li>
					</ul>
					</form>
				</div>
			</div>
  </body>
</html>
