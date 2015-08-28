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

<title>Universities Games Management System</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>organizations/styles.css">
<style type="text/css">
#sel{
      -webkit-border-radius:5px ; -moz-border-radius:5px;
     border-width:1px 137px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 5 75 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}


.contact_form ul{width:500px}


.contact_form input:focus{ /* add this to the already existing style */
    width:200px;
}

.contact_form input{ /* add this to the already existing style */
	width:180px;
    -moz-transition: padding .25s;
    -webkit-transition: padding .25s;
    -o-transition: padding .25s;
    transition: padding .25s;
}
</style>
</head>

<body> 
	<% ItemDao iDao = new ItemDao();
	ProcessDao pDao = new ProcessDao();
				List<Item> list = iDao.queryAllItems();%>
	<div align="center" id="content">
			
		<form action="referee/scoreshow.jsp" method="get" class="contact_form"> 
			<ul>
			<li><h2 style="align:left;font-size:16px;color:white;">Please choose to query events</h2></li>
				<label>Select the item：</label>		
					<select name="itemId" id="sel" style="color:white;">
					<% 
					for(Item item:list){
						List<Map> lm = pDao.queryProcessesByItemId(item.getItemId());
						for(Map map:lm){
							out.print("<option value=\""+map.get("PROCESS_ID")+"\" style=\"color:black;\">"+item.getItemName()+ " " + map.get("PROCESS_NAME") +item.getSexLimit()+"</option>");
						}
					}%>
				</select>
			</li>
			<li>
        		<button class="submit" type="submit">Submit</button>
       			 </li>
			</ul>	
		</form>
	</div>
</body>
</html>
