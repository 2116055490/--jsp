<%--
  Created by IntelliJ IDEA.
  User: xjw
  Date: 2021/10/22
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="demo.jsp" method="post">
    <label>姓名：</label>
    <input type="text" name="uname">
    <label>密码：</label>
    <input type="password" name="upas">
    <%--获取后台设置在作用域中的数据，并显示--%>
    <button>登录</button><span style="color: red;font-size: 12px"><%=request.getAttribute("msg")%></span>
</form>
<%

%>

</body>
</html>
