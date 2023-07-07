<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.Util.util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.Dao.dao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%

    String AgentID = (String) request.getParameter("AgentID");

    if (AgentID == "")
    {
        out.print("<script language='javaScript'> alert('房产经纪人姓名输入为空'); window.history.back(); </script>");
    } else
    {

        int i = 0;
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try
        {
            String sql = " select * from db1.房产经纪人基本信息表 ";
            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while (rs.next())
            {
                if (AgentID.equals(rs.getObject(1)))
                {
                    i++;
                }
            }
            if (i == 0)
            {
                out.print("<script language='javaScript'> alert('该房产经纪人不存在'); window.history.back(); </script>");
            } else
            {

                String HouseID = (String) session.getAttribute("HouseID");
                String Status = "在售";
                dao dao = new dao();
                dao.AuthorizeHouse(AgentID, Status, HouseID);
                out.print("<script language='javaScript'> alert('授权成功');</script>");
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
    }
%>
</table>
</body>
</html>
