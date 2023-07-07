<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

    <title>基本信息浏览</title>
    <style>
        .cart_span a, td a {
            font-size: 16px;
            color: blue;
        }
    </style>
</head>
<body>

<table id="customers">
    <tr>
        <th align="center" width=6%>房产编号</th>
        <th align="center" width=10%>房产地址</th>
        <th align="center" width=6%>销售报价</th>
    </tr>
    <%
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
                if (rs.getObject(7).equals("在售"))
                {

    %>
    <tr>
        <td align="center"><%=rs.getObject(1) %>
        </td>
        <td align="center"><a href='Admin_AuthorizeHouse_back1.jsp?Address=<%=rs.getObject(3)%>'><%=rs.getObject(3) %>
        </a></td>
        <td align="center"><%=rs.getObject(6) %>
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
