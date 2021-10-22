<%--
  Created by IntelliJ IDEA.
  User: xjw
  Date: 2021/10/22
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String uname = request.getParameter("uname");
    String pas = request.getParameter("upas");
    // 判断参数是否为空
    if (uname == null|| "".equals(uname.trim())){
        // 提示用户信息
        request.setAttribute("msg","用户姓名不能为空");
        // 请求转发
        request.getRequestDispatcher("login.jsp").forward(request,response);
        return;
    }
    if (pas == null || "".equals(pas.trim())){
        // 提示用户信息
        request.setAttribute("msg","用户密码不能为空");
        // 请求转发
        request.getRequestDispatcher("login.jsp").forward(request,response);
        return;
    }
    // 判断账号密码是否正确 uname=admin  pas = admin
    if (!"admin".equals(uname) || !"admin".equals(pas)) {
        // 提示用户信息
        request.setAttribute("msg", "登录失败");
        // 请求转发
        request.getRequestDispatcher("login.jsp").forward(request, response);
        return;

    }
     // 登录成功
    // 设置登录信息到session作用域
    request.getSession().setAttribute("uname",uname);
    // 跳转到logins.jsp
    response.sendRedirect("logins.jsp");

%>
</body>
</html>
