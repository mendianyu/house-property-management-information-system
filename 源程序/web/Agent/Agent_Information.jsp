<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>详细信息</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

</head>
<body>

<%

    String AgentID = (String) session.getAttribute("AgentID");

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
<table id="customers">
    <tr>
        <td align="center" width=10%>房产经纪人ID</td>
        <td align="center"><%=rs.getObject(1) %>
        </td>
    </tr>
    <tr>
        <td align="center" width=10%>登录密码</td>
        <td align="center"><%=rs.getObject(2) %>
        </td>
    </tr>
    <tr>
        <td align="center" width=5%>姓名</td>
        <td align="center"><%=rs.getObject(3) %>
        </td>
    </tr>
    <tr>
        <td align="center" width=20%>家庭住址</td>
        <td align="center"><%=rs.getObject(4) %>
        </td>
    </tr>
    <tr>
        <td align="center" width=20%>手机号码</td>
        <td align="center"><%=rs.getObject(5) %>
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
</body>
</html>
