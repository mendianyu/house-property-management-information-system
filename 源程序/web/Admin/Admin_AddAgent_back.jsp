<%@ page import="com.Bean.bean" %>
<%@ page import="com.Dao.dao" %>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">

<%

    String AgentID = request.getParameter("AgentID");
    String Apassword = request.getParameter("Apassword");
    String AgentName = request.getParameter("AgentName");
    String AgentPhone = request.getParameter("AgentPhone");
    String AgentAddress = request.getParameter("AgentAddress");


    bean bean = new bean();
    bean.setAgentID(AgentID);
    bean.setApassword(Apassword);
    bean.setAgentName(AgentName);
    bean.setAgentPhone(AgentPhone);
    bean.setAgentAddress(AgentAddress);

    dao dao = new dao();
    dao.AddAgent(bean);

    out.print("<script language='javaScript'> alert('注册成功');</script>");
    response.setHeader("refresh", "0;url=Admin_Menu.jsp");
%>
</html>
