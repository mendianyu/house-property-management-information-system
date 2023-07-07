<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <meta charset="UTF-8">
    <title>详细房产信息</title>
    <style>
        #sub_btn {
            background-color: #1abfb7;
            border: none;
            color: #fff;
            width: 70px;
        }
    </style>
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
<form action="User_PurchaseHouse_back2.jsp" method="get">
    <table id="customers">
        <tr>
            <th align="center" width=5%>户型</th>
            <th align="center" width=10%>房产地址</th>
            <th align="center" width=5%>建造年份</th>
            <th align="center" width=5%>建造面积</th>
            <th align="center" width=5%>销售报价</th>
            <th align="center" width=5%>操作</th>
        </tr>
        <tr>
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
            <td align="center"><input type="submit" value="购买" id="sub_btn">
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
