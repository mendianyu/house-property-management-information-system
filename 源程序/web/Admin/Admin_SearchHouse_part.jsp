<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.Util.util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部分房产信息</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <style>
        .cart_span a, td a {
            font-size: 16px;
            color: blue;
        }
    </style>
</head>
<body>
<%
    String Type = (String) request.getParameter("Type");
    String Address = (String) request.getParameter("Address");
    String Area = (String) request.getParameter("Area");
    String minPrice = (String) request.getParameter("minPrice");
    String maxPrice = (String) request.getParameter("maxPrice");

%>
<table id="customers">
    <tr>
        <th align="center" width=6%>户型</th>
        <th align="center" width=10%>房产地址</th>
        <th align="center" width=10%>面积</th>
        <th align="center" width=6%>销售报价</th>
    </tr>
    <%
        int i = 0;
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try
        {
            String sql = "SELECT * FROM db1.房产基本信息表 WHERE 1=1";
            List<String> conditions = new ArrayList<>();
            List<String> values = new ArrayList<>();

            if (Type != null && !Type.isEmpty())
            {
                conditions.add("户型 = ?");
                values.add(Type);
            }

            if (Address != null && !Address.isEmpty())
            {
                conditions.add("房产地址 LIKE ?");
                values.add("%" + Address + "%");
            }

            if (Area != null && !Area.isEmpty())
            {
                conditions.add("建造面积 LIKE ?");
                values.add("%" + Area + "%");
            }

            if (minPrice != null && !minPrice.isEmpty())
            {
                conditions.add("销售报价 >= ?");
                values.add(String.valueOf(Double.parseDouble(minPrice)));
            }

            if (maxPrice != null && !maxPrice.isEmpty())
            {
                conditions.add("销售报价 <= ?");
                values.add(String.valueOf(Double.parseDouble(maxPrice)));
            }

            if (!conditions.isEmpty())
            {
                sql += " AND " + String.join(" AND ", conditions);
            }

            preparedStatement = connection.prepareStatement(sql);
            for (int j = 0; j < values.size(); j++)
            {
                preparedStatement.setString(j + 1, values.get(j));
            }

            rs = preparedStatement.executeQuery();
            while (rs.next())
            {
                i++;
    %>
    <tr>
        <td align="center"><%=rs.getObject(2) %>
        </td>
        <td align="center"><a href='Admin_StopHouse_back1.jsp?Address=<%=rs.getObject(3)%>'><%=rs.getObject(3) %>
        </a></td>
        <td align="center"><%=rs.getObject(5) %>
        </td>
        <td align="center"><%=rs.getObject(6) %>
        </td>
    </tr>
    <%
            }
            if (i == 0)
            {
                out.print("<script language='javaScript'> alert('没有查询到有关信息');  </script>");
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
    <br>
</p>
</body>
</html>
