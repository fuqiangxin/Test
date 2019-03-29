<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
         Object message = request.getAttribute("message");
         if(message!=null && !"".equals(message)){
     
    %>
         <script type="text/javascript">
              alert("<%=request.getAttribute("message")%>");
         </script>
    <%} %>
    <div align="center">
        <h1 style="color: red;">课程信息列表</h1>
        <a href="index.jsp">返回主页</a>
        <table class="tb">
            <tr>
                <td>id</td>
                <td>课程名称</td>
                <td>任课教师</td>
                <td>上课地点</td>
                <td align="center" colspan="2">操作</td>
            </tr>
            <c:forEach items="${courses}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.teacher}</td>
                    <td>${item.classroom}</td>
                    <td><a href="TypeServlet?method=byId&id=${item.id}">修改</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>