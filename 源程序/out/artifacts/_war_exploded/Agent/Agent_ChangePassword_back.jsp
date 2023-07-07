<%@ page import="com.Dao.dao" %>
<%@ page import="java.util.Objects" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<%
    String AgentID = (String) session.getAttribute("AgentID");
    String Password2 = (String) request.getParameter("Password2");

    String Apassword = (String) session.getAttribute("Apassword");
    String Password0 = (String) request.getParameter("Password0");
    String Password1 = (String) request.getParameter("Password1");

    if (!Password0.equals(Apassword))
    {
        out.print("<script language='javaScript'> alert('旧密码输入错误');window.history.back();</script>");
    } else
    {
        dao dao = new dao();

        dao.ChangeAgentPassword(Password2, AgentID);
        out.print("<script language='javaScript'> alert('修改成功,即将重新登录');</script>");
        response.setHeader("refresh", "0;url=../login.jsp");
    }
%>

</body>
</html>
