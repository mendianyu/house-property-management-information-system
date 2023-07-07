<%@ page import="java.sql.SQLException" %>
<%@ page import="com.Bean.bean" %>
<%@ page import="com.Dao.dao" %>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">

<%

    String UserID = request.getParameter("UserID");
    String Upassword = request.getParameter("Upassword");
    String IdNumber = request.getParameter("IdNumber");
    String UserName = request.getParameter("UserName");
    String Sex = request.getParameter("Sex");
    String UserPhone = request.getParameter("UserPhone");
    String UserAddress = request.getParameter("UserAddress");


    bean bean = new bean();
    bean.setUserID(UserID);
    bean.setUpassword(Upassword);
    bean.setIdNumber(IdNumber);
    bean.setUserName(UserName);
    bean.setSex(Sex);
    bean.setUserPhone(UserPhone);
    bean.setUserAddress(UserAddress);

    dao dao = new dao();
    dao.AddUser(bean);

    out.print("<script language='javaScript'> alert('注册成功');</script>");
    response.setHeader("refresh", "0;url=../login.jsp");

%>
</html>
