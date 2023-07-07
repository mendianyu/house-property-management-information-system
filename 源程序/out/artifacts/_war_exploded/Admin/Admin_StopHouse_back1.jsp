<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.Util.util" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">

    <title>详细房产信息</title>
    <style>
        input[type=submit], input[type=button] {
            padding: 10px 7px;
            margin: 8px 0;
        }
    </style>
</head>
<body>

<%
    String Address = (String) request.getParameter("Address");
    session.setAttribute("Address", Address);
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

                String Type = (String) rs.getObject(2);
                session.setAttribute("Type", Type);

                String Year = (String) rs.getObject(4);
                session.setAttribute("Year", Year);

                String Area = (String) rs.getObject(5);
                session.setAttribute("Area", Area);

                String Price = (String) rs.getObject(6);
                session.setAttribute("Price", Price);

                String Status = (String) rs.getObject(7);
                session.setAttribute("Status", Status);
%>
<form action="Admin_StopHouse_back2.jsp" method="get">
    <table id="customers">
        <tr>
            <th align="center" width=5%>房产编号</th>
            <th align="center" width=5%>户型</th>
            <th align="center" width=13%>房产地址</th>
            <th align="center" width=5%>建造年份</th>
            <th align="center" width=5%>建造面积</th>
            <th align="center" width=5%>销售报价</th>
            <th align="center" width=5%>销售状态</th>
            <th align="center" width=5%>房产经纪人ID</th>
            <th align="center" width=5%>顾客ID</th>
            <th align="center" width=10%>操作</th>

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
            <td>
                <input type="submit" value="停售" style="display: inline-block;">
                <input type="button" onclick="location.href='Admin_ChangeHouse.jsp'" value="修改"
                       style="display: inline-block;">
                <input type="button" onclick="location.href='Admin_DeleteHouse.jsp'" value="删除"
                       style="display: inline-block;">
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
<p style="text-align:center;color: black; font-family: 宋体; font-size: 20px">
    <input type="button" name="back" onclick="window.history.back();" value=返回上一页>
</p>
</body>


</html>
