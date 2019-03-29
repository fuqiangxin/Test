<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
        <h1 style="color: red;">课程信息列表</h1>
        <a href="index.jsp">返回主页</a>
        <table >
            <tr>
                <td>id</td>
                <td>课程名称</td>
                <td>任课教师</td>
                <td>上课地点</td>
            </tr>
            <!-- forEach遍历出adminBeans -->
            <c:forEach items="${types}" var="item" varStatus="status">
                <tr>
                    <td>${item.id}</td>
                    <td><a>${item.name}</a></td>
                    <td>${item.teacher}</td>
                    <td>${item.classroom}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>