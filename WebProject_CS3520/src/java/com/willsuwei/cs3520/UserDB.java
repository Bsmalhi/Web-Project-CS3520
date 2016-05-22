package com.willsuwei.cs3520;

import java.sql.Connection;
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
    private static List<User> userDB = new ArrayList();
        
    public static void add(User newUser){
        userDB.add(newUser);
        MyDatabase.InitiallizeConnection();
        Connection connection = MyDatabase.getConnection();
        String query = "INSERT INTO cs3520.user (username, password, email, firstname, lastname, dob)"
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";
         MyDatabase.Run(query);
        MyDatabase.CloseConnection();
    }
    
    public static User find(String username){
        for (User user: userDB){
            if (user.getUsername().equals(username)){
                return user;
            }
        }
        return null;
    }
}
