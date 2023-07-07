<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

    <title>详细房产信息</title>

</head>
<body>

<%
    String Address = (String) request.getParameter("Address");
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
            if (Address.equals(rs.getObject(3)))
            {
                //重要
                String HouseID = (String) rs.getObject(1);
                session.setAttribute("HouseID", HouseID);
%>
<table id="customers">
    <tr>
        <th align="center" width=5%>房产编号</th>
        <th align="center" width=5%>户型</th>
        <th align="center" width=10%>房产地址</th>
        <th align="center" width=5%>建造年份</th>
        <th align="center" width=5%>建造面积</th>
        <th align="center" width=5%>销售报价</th>
        <th align="center" width=5%>销售状态</th>
        <th align="center" width=5%>房产经纪人ID</th>
        <th align="center" width=5%>顾客ID</th>
    </tr>
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
        <td align="center"><%=rs.getObject(8) %>
        </td>
        <td align="center"><%=rs.getObject(9) %>
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
<form action="Admin_AuthorizeHouse_back2.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
        <br>
        请输入被授权房产经纪人的工号
        <br>
        <input type="text" name="AgentID">
        <br>
        <input type="button" name="back" onclick="window.history.back();" value=返回>
        <input type="submit" value="授权">
    </p>
</form>
</body>
</html>
