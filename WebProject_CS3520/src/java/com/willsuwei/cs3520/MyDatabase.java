/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.willsuwei.cs3520;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Will
 */
public class MyDatabase {
    private static String dbURL = "jdbc:mysql://willsuwei.com:3306";
    private static String username = "cs3520";
    private static String password = "cs3520";
    private static Connection connection;

    public static Connection getConnection() {
        return connection;
    }
    
    public static void InitiallizeConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, username, password);
        } catch(Exception e){
            System.out.println(e);
            e.printStackTrace();;
        }
    }
    
    public static ResultSet Run(String sqlStatement){
        ResultSet rs = null;
        try{
            PreparedStatement ps = connection.prepareStatement(sqlStatement);
            rs = ps.executeQuery();
        }catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();;
        }
        
        return rs;
    }
    
    public static void CloseConnection(){
        try{
            connection.close();
        } catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();;
        }
    }
    
    public static void PrintResultSet(ResultSet rs){
        try{
            while (rs.next()){
                System.out.println(rs.getString("ID") +" "+ rs.getString("Name"));
            }
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
        MyDatabase.InitiallizeConnection();
        ResultSet rs = MyDatabase.Run("SELECT * FROM world.city;");
        MyDatabase.PrintResultSet(rs);
        MyDatabase.CloseConnection();
    }
}
