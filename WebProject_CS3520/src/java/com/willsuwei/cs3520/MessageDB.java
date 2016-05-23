/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.willsuwei.cs3520;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Will
 */
public class MessageDB {
    
    public static void add(Message message){
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
            String query = "INSERT INTO cs3520.message (fromuser, touser, message, year, month, day, hour, minute, second) " + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            ps = connection.prepareStatement(query);
            ps.setString(1, message.getFromuser());
            ps.setString(2, message.getTouser());
            ps.setString(3, message.getMessage());            
            ps.setString(4, message.getYear());
            ps.setString(5, message.getMonth());
            ps.setString(6, message.getDay());
            ps.setString(7, message.getHour());
            ps.setString(8, message.getMinute());
            ps.setString(9, message.getSecond());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
    }
    
    public static ArrayList<Message> find(String username){        
        ArrayList<Message> message = new ArrayList();
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "SELECT * FROM cs3520.message WHERE touser = ? ORDER BY id DESC";
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                message.add(new Message(
                        rs.getInt("id"),
                        rs.getString("fromuser"),
                        rs.getString("touser"),
                        rs.getString("message"),
                        rs.getString("year"),
                        rs.getString("month"),
                        rs.getString("day"),
                        rs.getString("hour"),
                        rs.getString("minute"),
                        rs.getString("second")
                ));
            }
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
        
        return message;
    }
    
    
    public static void deleteMessageByID(int id){        
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "DELETE FROM cs3520.message WHERE id = ? ";
            ps = connection.prepareStatement(query);
            //ps.setString(1, Integer.toString(id));
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
    }
    
    public static void main(String[] str){
        add(new Message(1, "asdf", "asdf", "Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message ", "1990", "01", "01", "01", "01", "01"));
    }
}
