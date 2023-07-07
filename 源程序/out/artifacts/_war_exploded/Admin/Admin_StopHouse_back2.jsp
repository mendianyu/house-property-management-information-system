<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String HouseID= (String) session.getAttribute("HouseID");
    String Status="停售";
    dao dao=new dao();
    dao.StopHouse(Status,HouseID);
    out.print("<script language='javaScript'> alert('已将该房产停售');</script>");

%>
</body>
</html>
