<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String HouseID = (String) session.getAttribute("HouseID");
    String Type = request.getParameter("HouseType");
    String Address = request.getParameter("Address");
    String Year = request.getParameter("Year");
    String Area = request.getParameter("Area");
    String Sales = request.getParameter("Sales");
    String Status = request.getParameter("Status");

    dao dao = new dao();
    dao.ChangeHouse(Type, Address, Year, Area, Sales, Status, HouseID);
%>
</body>
</html>
