/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.willsuwei.cs3520;

import java.sql.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Will
 */
public class ConnectionPool {
    private static ConnectionPool pool = null;
    private static DataSource dataSource = null;
    
    private static String dbURL = "jdbc:mysql://willsuwei.com:3306";
    private static String username = "cs3520";
    private static String password = "cs3520";
    
    private ConnectionPool(){
        try{
            InitialContext ic = new InitialContext();
            dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/murach");
        } catch (NamingException e){
            System.out.println(e);
        }
    }
    
    public static synchronized ConnectionPool getInstance(){
        if (pool == null) {
            pool = new ConnectionPool();
        }
        return pool;
    }
    
    public Connection getConnection(){
        try{
            //return dataSource.getConnection();
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(dbURL, username, password);
        } catch (Exception e){
            System.out.println(e);
            return null;
        }
    }
    
    public void freeConnection(Connection c){
        try{
            c.close();
        } catch (SQLException e){
            System.out.println(e);
        }
    }
}
