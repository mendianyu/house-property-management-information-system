<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

    <meta charset="UTF-8">
    <title>房产信息浏览</title>
</head>
<body>

<table id="customers">
    <tr>
        <th align="center" width=5%>房产编号</th>
        <th align="center" width=5%>户型</th>
        <th align="center" width=10%>房产地址</th>
        <th align="center" width=5%>建造年份</th>
        <th align="center" width=5%>建造面积</th>
        <th align="center" width=5%>销售报价</th>
        <th align="center" width=5%>销售状态</th>
    </tr>
    <%
        String AgentID = (String) session.getAttribute("AgentID");
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try
        {
            String sql = "select * from db1.房产基本信息表";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next())
            {
                if (AgentID.equals(rs.getObject(8)))
                {
    %>
    <tr>
        <td align="center"><%=rs.getObject(1) %>
        </td>
        <td align="center"><%=rs.getObject(2) %>
        </td>
        <td align="center"><%=rs.getObject(3) %>
        </td>
        <td align="center"><%=rs.getObject(4) %>
        </td>
        <td align="center"><%=rs.getObject(5) %>
        </td>
        <td align="center"><%=rs.getObject(6) %>
        </td>
        <td align="center"><%=rs.getObject(7) %>
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
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <input type="button" name="back" onclick="window.history.back();" value=返回上一页>
</p>
</body>
</html>
