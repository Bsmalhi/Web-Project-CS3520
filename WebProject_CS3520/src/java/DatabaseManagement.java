
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Will
 */
public class DatabaseManagement {
    private static String dbURL = "jdbc:mysql://localhost:3306";
    private static String username = "root";
    private static String password = "root";
    private static Connection connection;
    private static Statement statement;
    
    public static void Run(String sqlStatement){
        try{
            connection = DriverManager.getConnection(dbURL, username, password);
            
            String st = "SELECT * FROM world.city;";
            PreparedStatement ps = connection.prepareStatement(st);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                System.out.println(rs.getString("ID") +" "+ rs.getString("Name"));
            }
            
            statement = connection.createStatement();
            sqlStatement = sqlStatement.trim();
            /*if (sqlStatement.length() >= 6){
                String sqlType = sqlStatement.substring(0, 6);
                if (sqlType.equalsIgnoreCase("select")){
                    //ResultSet resultSet
                }
            }}*/
        }catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();;
        }
        
    }
    
    public static void main(String[] args) {
        Run("123");
    }
}
