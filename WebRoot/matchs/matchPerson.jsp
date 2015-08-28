<%@ page language="java"
	import="java.util.*,com.sports.model.queries.*,com.sports.model.entities.*"
	pageEncoding="UTF-8"%>
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
		<%
			String itemId = request.getParameter("itemId");
			ItemDao iDao = new ItemDao();
			Item item = iDao.queryItemById(itemId);
			PersonDao pDao = new PersonDao();
			Unit unit = (Unit)request.getSession().getAttribute("_currentUnit_");
			List<Map> list = pDao.queryPersonByItem(item, unit.getUnitId());
		%>
		<div align="center" id="content">
			<div id="line"></div>
			<form action="AddMatch" method="post" class="contact_form">
			<ul>
			<li><h2 style="align:left;font-size:16px;">Please select registration staff</h2>
			</li>
			<li><%
								out.print("<input type='hidden' name='itemId' value=\"" + itemId
										+ "\"  required/>");
							%></li>
							  
			<li><label>Select staff:</label>
						<select name="personId" id="sel" style="color:white;">
								<%	
									for (Map map : list) {
										out.print("<option value=\"" + map.get("PERSON_ID") + "\" style=\"color:black;\">"
												+ map.get("PERSON_NAME") + "</option>");
									}
								%>
							</select>
							<li>
							<button class="submit" type="submit">Submit</button>
							</li>
			</ul>
			
			
			<!-- 
				<table>
					<tr>
						<td>
							<font size="3" color="red">*</font>
						</td>
						<td>
							项目编号:
						</td>
						<td>
							<
								out.print("<input type='text' name='itemId' value=\"" + itemId
										+ "\" />");
							%>
						</td>
					</tr>
					<tr>
						<td>
							<font size="3" color="red">*</font>
						</td>
						<td>
							选择人员：
						</td>
						<td>
							<select name="personId">
								<
									for (Map map : list) {
										out.print("<option value=\"" + map.get("PERSON_ID") + "\">"
												+ map.get("PERSON_NAME") + "</option>");
									}
								%>
							</select>
						</td>
					</tr>
				</table>
				<input type="submit" value="提交" />
				 -->
			</form>
		</div>
	</body>
</html>
