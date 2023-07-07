<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

    <title>详细信息</title>
</head>
<body>

<%

    String AgentID = (String) request.getParameter("AgentID");
    session.setAttribute("AgentID", AgentID);
    Connection connection = util.getConnection();
    PreparedStatement preparedStatement = null;
    ResultSet rs = null;
    try
    {
        String sql = "select * from db1.房产经纪人基本信息表";
        preparedStatement = connection.prepareStatement(sql);
        rs = preparedStatement.executeQuery();
        while (rs.next())
        {
            if (AgentID.equals(rs.getObject(1)))
            {
%>
<form action="Admin_ResetPassword_back2.jsp" method="get">
    <table id="customers">
        <tr>
            <th align="center" width=10%>房产经纪人ID</th>
            <th align="center" width=5%>姓名</th>
            <th align="center" width=20%>家庭住址</th>
            <th align="center" width=20%>手机号码</th>
            <th align="center" width=20%>操作</th>

        </tr>
        <tr>
            <td align="center"><%=rs.getObject(1) %>
            </td>
            <td align="center"><%=rs.getObject(3) %>
            </td>
            <td align="center"><%=rs.getObject(4) %>
            </td>
            <td align="center"><%=rs.getObject(5) %>
            </td>
            <td align="center"><input type="submit" value="重置密码">
            </td>
        </tr>
        <%
                    }
                }
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
            finally
            {
                util.close(rs);
                util.close(preparedStatement);
                util.close(connection);
            }
        %>
    </table>
</form>

</body>
</html>
