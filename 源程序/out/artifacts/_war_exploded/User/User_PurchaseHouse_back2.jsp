<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String UserID= (String) session.getAttribute("UserID");
    String HouseID= (String) session.getAttribute("HouseID");
    String Status="意向";
    dao dao=new dao();
    dao.PurchaseHouse(UserID,Status,HouseID);
    out.print("<script language='javaScript'> alert('已将该房产纳入意向');</script>");
    response.sendRedirect(request.getHeader("Referer"));
    response.sendRedirect(request.getHeader("Referer"));
%>
</body>
</html>
