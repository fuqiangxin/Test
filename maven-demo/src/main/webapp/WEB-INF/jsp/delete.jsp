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
         if(message!=null && !"".equals(message)){
     
    %>
         <script type="text/javascript">
              alert("<%=request.getAttribute("message")%>");
         </script>
    <%} %>
    <div align="center">
        <h1 style="color: red;">课程信息录入</h1>
        <a href="index.jsp">返回主页</a>
        <form action="TypeServlet?method=add" method="post" onsubmit="return check()">
            <div >
                课程名称<input type="text" id="name" name="name"/>
            </div>
            <div >
                任课教师<input type="text" id="teacher" name="teacher" />
            </div>
            <div >
                上课地点<input type="text" id="classroom" name="classroom" />
            </div>
            <div >
                <button type="submit" >保&nbsp;&nbsp;&nbsp;存</button>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        function check() {
            var name = document.getElementById("name");;
            var teacher = document.getElementById("teacher");
            var classroom = document.getElementById("classroom");
            
            //非空
            if(name.value == '') {
                alert('课程名称为空');
                name.focus();
                return false;
            }
            if(teacher.value == '') {
                alert('教师为空');
                teacher.focus();
                return false;
            }
            if(classroom.value == '') {
                alert('上课地点为空');
                classroom.focus();
                return false;
            }
            
            //教师
            if(teacher.value != '王建民' && teacher.value != '王辉' && teacher.value != '刘丹' && teacher.value != '刘立嘉' && teacher.value != '杨子光'){
                alert('教师名称错误');
                return false;
            }
            
            //教室
            if(!/^基教/.test(classroom.value) && !/^一教/.test(classroom.value) && !/^二教/.test(classroom.value) && !/^三教/.test(classroom.value)) {
                alert('上课地点错误');
                return false;
            }
        }
    </script>
</body>
</html>