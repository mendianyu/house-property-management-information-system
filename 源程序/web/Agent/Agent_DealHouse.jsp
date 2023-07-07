<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.Util.util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

    <title>部分房产信息</title>
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
        <th align="center" width=6%>顾客ID</th>
    </tr>
    <%
        String AgentID = (String) session.getAttribute("AgentID");
        int i = 0;
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try
        {
            String sql = " select * from db1.房产基本信息表  ";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next())
            {
                if (rs.getObject(7).equals("意向") && AgentID.equals(rs.getObject(8)))
                {
                    i++;
    %>
    <tr>
        <td align="center"><%=rs.getObject(1) %>
        </td>
        <td align="center"><a href='Agent_DealHouse_back1.jsp?Address=<%=rs.getObject(3)%>'><%=rs.getObject(3) %>
        </a></td>
        <td align="center"><%=rs.getObject(6) %>
        </td>
        <td align="center"><%=rs.getObject(9) %>
        </td>
    </tr>
    <%
                }
            }
            if (i == 0)
            {
                //out.print("<script language='javaScript'> alert('没有查询到有关信息'); window.history.back(-1); </script>");
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
