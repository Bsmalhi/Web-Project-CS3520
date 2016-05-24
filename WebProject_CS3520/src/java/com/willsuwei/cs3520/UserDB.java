package com.willsuwei.cs3520;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Will
 */
public class UserDB {
    
    public static void add(User newUser){
        /*
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = "INSERT INTO cs3520.user (username, password, email, firstname, lastname, dob) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        try{
            ps = connection.prepareStatement(query);
            ps.setString(1, newUser.getUsername());
            ps.setString(2, newUser.getPassword());
            ps.setString(3, newUser.getEmail());
            ps.setString(4, newUser.getFirstname());
            ps.setString(5, newUser.getLastname());
            ps.setString(6, newUser.getYear() + "-" +
                            newUser.getMonth()+ "-" +
                            newUser.getDay());
            return ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
            return 0;
        } finally{
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }*/
        
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
            
            PreparedStatement ps = null;
            String query = "INSERT INTO cs3520.user (username, password, email, firstname, lastname, year, month, day) " + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            
            ps = connection.prepareStatement(query);
            ps.setString(1, newUser.getUsername());
            ps.setString(2, newUser.getPassword());
            ps.setString(3, newUser.getEmail());
            ps.setString(4, newUser.getFirstname());
            ps.setString(5, newUser.getLastname());
            ps.setString(6, newUser.getYear());
            ps.setString(7, newUser.getMonth());
            ps.setString(8, newUser.getDay());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
    }
    
    public static void update(User newUser){
        
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "UPDATE cs3520.user SET "
                    + "password=?, "
                    + "email=?, "
                    + "firstname=?, "
                    + "lastname=?, "
                    + "year=?, "
                    + "month=?, "
                    + "day=? "
                    + "WHERE username=?";
            
            ps = connection.prepareStatement(query);
            ps.setString(1, newUser.getPassword());
            ps.setString(2, newUser.getEmail());
            ps.setString(3, newUser.getFirstname());
            ps.setString(4, newUser.getLastname());
            ps.setString(5, newUser.getYear());
            ps.setString(6, newUser.getMonth());
            ps.setString(7, newUser.getDay());
            ps.setString(8, newUser.getUsername());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
    }
    
    public static User find(String username){        
        User user = null;
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "SELECT * FROM cs3520.user WHERE username = ?";
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                user = new User(
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getString("year"),
                        rs.getString("month"),
                        rs.getString("day")
                );
            }
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
        
        return user;
    }
    
    public static void main(String[] args){
        User user = new User("username", "password", "email", "firstname", "lastname", "year", "month", "day");
        add(user);
    }
}
