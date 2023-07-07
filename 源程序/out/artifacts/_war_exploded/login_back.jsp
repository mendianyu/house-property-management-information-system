<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.Util.util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String role = (String) request.getParameter("role");
    if (role.equals("顾客"))
    {
        String UserID = (String) request.getParameter("username");

        session.setAttribute("UserID", UserID);

        String Upassword = (String) request.getParameter("password");

        session.setAttribute("Upassword", Upassword);

        if (UserID.isEmpty() || Upassword.isEmpty())
        {
            out.print("<script language='javaScript'> alert('用户ID或密码输入为空'); window.history.back(); </script>");
        } else
        {

            int i = 0;
            int j = 0;
            Connection connection = util.getConnection();
            PreparedStatement preparedStatement = null;
            ResultSet rs = null;
            try
            {
                String sql = " select * from db1.顾客基本信息表 ";
                preparedStatement = connection.prepareStatement(sql);
                rs = preparedStatement.executeQuery();
                while (rs.next())
                {

                    if (UserID.equals(rs.getObject(1)) && Upassword.equals(rs.getObject(2)))
                    {
                        i++;
                    }
                }
                if (i == 0)
                {
                    out.print("<script language='javaScript'> alert('用户ID或密码错误'); window.history.back(); </script>");
                } else if (i == 1)
                {
                    out.print("<script language='javaScript'> alert('登录成功');</script>");
                    response.setHeader("refresh", "0;url=User/User_Menu.jsp");
                }
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
            finally
            {
            }
        }
    } else if (role.equals("房产经纪人"))
    {
        String AgentID = (String) request.getParameter("username");

        session.setAttribute("AgentID", AgentID);

        String Apassword = (String) request.getParameter("password");

        session.setAttribute("Apassword", Apassword);

        if (AgentID == "" || Apassword == "")
        {
            out.print("<script language='javaScript'> alert('工号或密码输入为空'); window.history.back(); </script>");
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
                    if (AgentID.equals(rs.getObject(1)) && Apassword.equals(rs.getObject(2)))
                    {
                        i++;
                    }
                }
                if (i == 0)
                {
                    out.print("<script language='javaScript'> alert('工号或密码错误'); window.history.back(); </script>");
                } else
                {
                    out.print("<script language='javaScript'> alert('登录成功');</script>");
                    response.setHeader("refresh", "0;url=Agent/Agent_Menu.jsp");
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
    } else if (role.equals("系统管理员"))
    {
        response.setHeader("refresh", "0;url=Admin/Admin_Menu.jsp");
    }

%>
</body>
</html>
