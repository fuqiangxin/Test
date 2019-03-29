<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Object message = request.getAttribute("message");
		if (message != null && !"".equals(message)) {
	%>
	<script type="text/javascript">
              alert("<%=request.getAttribute("message")%>
		");
	</script>
	<%
		}
	%>
	<div align="center">
		<h1 style="color: red;">用户信息录入</h1>
		<a href="index.jsp">返回主页</a>
		<form action="user/saveUser" method="post"
			onsubmit="return check()">
			<div>
				用户名称:<input type="text" id=userName name="userName" />
			</div>
			<div>
				用户密码:<input type="text" id="userPassword" name="userPassword" />
			</div>
			<div>
				用户邮件:<input type="text" id="userEmail" name="userEmail" />
			</div>
			<div>
				<button type="submit">保&nbsp;&nbsp;&nbsp;存</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function check() {
			var userName = document.getElementById("userName");
			;
			var userPassword = document.getElementById("userPassword");
			var userEmail = document.getElementById("userEmail");

			//非空
			if (userName.value == '') {
				alert('课程名称为空');
				name.focus();
				return false;
			}
			if (userPassword.value == '') {
				alert('教师为空');
				teacher.focus();
				return false;
			}
			if (userEmail.value == '') {
				alert('上课地点为空');
				classroom.focus();
				return false;
			}
		}
	</script>
</body>
</html>