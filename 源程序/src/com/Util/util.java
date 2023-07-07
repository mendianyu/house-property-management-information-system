package com.Util;

import java.sql.*;

public class util
{
    public static Connection getConnection()//连接数据库
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        String user = "root";
        String password = "Mendy030628";
        String url = "jdbc:mysql://localhost:3306/db1?useSSL=false&serverTimezone=GMT&characterEncoding=utf-8&autoReconnect=true";
        Connection con = null;
        try
        {
            con = DriverManager.getConnection(url, user, password);
            //System.out.println("数据库连接成功");
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return con;
    }

    //**********************************************************************
    //关闭方法
    public static void close(Connection con)
    {
        try
        {
            if (con != null)
            {
                con.close();
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public static void close(PreparedStatement preparedStatement)
    {
        try
        {
            if (preparedStatement != null)
            {
                preparedStatement.close();
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public static void close(ResultSet resultSet)
    {
        try
        {
            if (resultSet != null)
            {
                resultSet.close();
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
}

