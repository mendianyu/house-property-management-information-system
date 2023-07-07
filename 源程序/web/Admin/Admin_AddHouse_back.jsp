<%@ page import="com.Bean.bean" %>
<%@ page import="com.Dao.dao" %>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">

<%
    String HouseID = request.getParameter("HouseID");
    String HouseType = request.getParameter("HouseType");
    String Address = request.getParameter("Address");
    String Year = request.getParameter("Year");
    String Area = request.getParameter("Area");
    String Sales = request.getParameter("Sales");
    String Status = request.getParameter("Status");

    bean bean = new bean();
    bean.setHouseID(HouseID);
    bean.setHouseType(HouseType);
    bean.setAddress(Address);
    bean.setYear(Year);
    bean.setArea(Area);
    bean.setSales(Sales);
    bean.setStatus(Status);

    dao dao = new dao();
    dao.AddHouse(bean);

    out.print("<script language='javaScript'> alert('添加成功');</script>");
%>
</html>
