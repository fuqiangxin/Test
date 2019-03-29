<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>首页</title>
<style >
.a{
        font-size: 26px;
        margin-top: 20px;
    }
</style>
</head>
<body>
<div align="center">
<h1 style="color: red;">课程基本信息管理系统</h1>
        <div class="a">
            <a href="/to/add">课程信息录入</a>
        </div>
        <div class="a">
            <a href="TypeServlet?method=list">课程信息修改</a>
        </div>
        <div class="a">
            <a href="delete.jsp">课程信息删除</a>
        </div>
        <div class="a">
            <a href="select.jsp">课程信息查询</a>
        </div>
</div>
</body>
</html>