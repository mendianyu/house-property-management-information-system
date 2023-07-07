<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String HouseID= (String) session.getAttribute("HouseID");
    String Status="售出";
    dao dao=new dao();
    dao.DealHouse(Status,HouseID);
    out.print("<script language='javaScript'> alert('已将该房产交易');</script>");
    response.setHeader("refresh", "0;url=Agent_Menu.jsp");

%>
</body>
</html>
