/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.willsuwei.cs3520;

import java.sql.*;

/**
 *
 * @author Will
 */
public class DBUtil {
    public static void closeStatement(Statement s){
        try {
            if (s!= null){
                s.close();
            }
        } catch (Exception e){
                System.out.println(e);
        }
    }
    
    public static void closePreparedStatement(Statement ps){
        try{
            if (ps != null){
                ps.close();
            }
        } catch (Exception e){
            System.out.println(e);
        }
    }
}
