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
		<meta charset="utf-8">
		<title>HTML5 Contact Form |Only the front-end feel</title>
		<link rel="stylesheet" media="screen" href="styles.css">
		<style>
.contact_form {
	padding-top: 40px;
}

.title {
	background-color: rgba(0, 0, 0, 0.56);
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0;
	left: 0;
	padding: 5px 0;
}

.title a {
	color: #FFF;
	text-decoration: none;
	font-size: 16px;
	font-weight: bolder;
	line-height: 24px;
}
</style>
	</head>
	<body>
		<div class="title">
			<a href="http://www.kk.com/forms-css3-html5-validation/">Tutorial: make your form upgrade to CSS3 and HTML5 client-side validation (Return to article)</a>
		</div>
		<form class="contact_form" action="#" method="post"
			name="contact_form">
			<ul>
				<li>
					<h2>
						contact us
					</h2>
					<span class="required_notification">* It indicates a required field</span>
				</li>
				<li>
					<label for="name">
						Full name:
					</label>
					<input type="text" placeholder="Javin" required />
				</li>
				<li>
					<label for="email">
						E-mail:
					</label>
					<input type="email" name="email" placeholder="javin@example.com"
						required />
					<span class="form_hint">The correct format for the：javin@verizon.com</span>
				</li>
				<li>
					<label for="website">
						Website:
					</label>
					<input type="url" name="website"
						placeholder="http://www.jiawin.com" required
						pattern="(http|https)://.+" />
					<span class="form_hint">The correct format for the ：http://ww.jsp.com</span>
				</li>
				<li>
					<label for="message">
						leave a message:
					</label>
					<textarea name="message" cols="40" rows="6"
						placeholder=" " required></textarea>
				</li>
				<li>
					<button class="submit" type="submit">
						Submit Form
					</button>
				</li>
			</ul>
		</form>
	</body>
</html>
