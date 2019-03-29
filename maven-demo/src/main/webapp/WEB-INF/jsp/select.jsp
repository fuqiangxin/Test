<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
        <h1 style="color: red;">课程信息查询</h1>
        <a href="index.jsp">返回主页</a>
        <form action="TypeServlet?method=select" method="post" onsubmit="return check()">
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
                <button type="submit" class="b">查&nbsp;&nbsp;&nbsp;询</button>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        function check() {
            var name = document.getElementById("name");;
            var teacher = document.getElementById("teacher");
            var classroom = document.getElementById("classroom");
            
            //非空
            if(name.value == '' && teacher.value == '' && classroom.value == '') {
                alert('请填写一个条件');
                return false;
            }
        }
    </script>
</body>
</html>