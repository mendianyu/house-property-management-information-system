package com.Dao;

import com.Bean.bean;
import com.Util.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class dao
{
    public void AddUser(bean bean)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "insert into db1.顾客基本信息表(顾客ID,密码,身份证号,姓名,性别,手机,家庭住址) values(?,?,?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bean.getUserID());
            preparedStatement.setString(2, bean.getUpassword());
            preparedStatement.setString(3, bean.getIdNumber());
            preparedStatement.setString(4, bean.getUserName());
            preparedStatement.setString(5, bean.getSex());
            preparedStatement.setString(6, bean.getUserPhone());
            preparedStatement.setString(7, bean.getUserAddress());
            preparedStatement.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void AddAgent(bean bean)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "insert into db1.房产经纪人基本信息表(房产经纪人ID,密码,姓名,家庭住址,手机) values(?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bean.getAgentID());
            preparedStatement.setString(2, bean.getApassword());
            preparedStatement.setString(3, bean.getAgentName());
            preparedStatement.setString(4, bean.getAgentAddress());
            preparedStatement.setString(5, bean.getAgentPhone());
            preparedStatement.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void AddHouse(bean bean)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "insert into db1.房产基本信息表(房产编号,户型,房产地址,建造年份,建造面积,销售报价,销售状态) values(?,?,?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, bean.getHouseID());
            preparedStatement.setString(2, bean.getHouseType());
            preparedStatement.setString(3, bean.getAddress());
            preparedStatement.setString(4, bean.getYear());
            preparedStatement.setString(5, bean.getArea());
            preparedStatement.setString(6, bean.getSales());
            preparedStatement.setString(7, bean.getStatus());
            preparedStatement.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void ChangeUserPassword(String Upassword, String UserID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.顾客基本信息表 set 密码=?where 顾客ID=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Upassword);
            preparedStatement.setString(2, UserID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void ChangeAgentPassword(String Apassword, String AgentID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产经纪人基本信息表 set 密码=?where 房产经纪人ID=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Apassword);
            preparedStatement.setString(2, AgentID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void AuthorizeHouse(String AgentID, String Status, String HouseID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产基本信息表 set 房产经纪人ID=?,销售状态=? where 房产编号=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, AgentID);
            preparedStatement.setString(2, Status);
            preparedStatement.setString(3, HouseID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void PurchaseHouse(String UserID, String Status, String HouseID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产基本信息表 set 顾客ID=?,销售状态=? where 房产编号=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, UserID);
            preparedStatement.setString(2, Status);
            preparedStatement.setString(3, HouseID);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void StopHouse(String Status, String HouseID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产基本信息表 set 销售状态=? where 房产编号=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Status);
            preparedStatement.setString(2, HouseID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void DealHouse(String Status, String HouseID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产基本信息表 set 销售状态=? where 房产编号=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Status);
            preparedStatement.setString(2, HouseID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }


    public void ResetPassword(String Apassword, String AgentID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产经纪人基本信息表 set 密码=? where 房产经纪人ID=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Apassword);
            preparedStatement.setString(2, AgentID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void ChangeHouse(String Type, String Address, String Year, String Area, String Price, String Status, String HouseID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "update db1.房产基本信息表 set 户型=? ,房产地址=? ,建造年份=?, 建造面积=?, 销售报价=? ,销售状态=?where 房产编号=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Type);
            preparedStatement.setString(2, Address);
            preparedStatement.setString(3, Year);
            preparedStatement.setString(4, Area);
            preparedStatement.setString(5, Price);
            preparedStatement.setString(6, Status);
            preparedStatement.setString(7, HouseID);
            preparedStatement.executeUpdate();

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }

    public void DeleteHouse(String HouseID)
    {
        Connection connection = util.getConnection();
        PreparedStatement preparedStatement = null;
        try
        {
            String sql = "delete from db1.房产基本信息表 where 房产编号=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, HouseID);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            util.close(preparedStatement);
            util.close(connection);
        }
    }
}
