<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String AgentID = (String) session.getAttribute("AgentID");
    String Apassword = "123456";
    dao dao = new dao();
    dao.ResetPassword(Apassword, AgentID);
    out.print("<script language='javaScript'> alert('成功重置密码');</script>");

%>
</body>
</html>
