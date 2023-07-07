<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String HouseID = (String) session.getAttribute("HouseID");

    dao dao = new dao();
    dao.DeleteHouse(HouseID);
%>
</body>
</html>
