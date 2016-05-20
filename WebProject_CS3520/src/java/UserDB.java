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
    
    public static void add(String userName, String password){
        User newUser = new User(userName, password);
        userDB.add(newUser);
    }
    
    public static User find(String userName, String password){
        for (User user: userDB){
            if (user.getUserName().equals(userName) && user.getPassword().equals(password)){
                return user;
            }
        }
        return null;
    }
}
