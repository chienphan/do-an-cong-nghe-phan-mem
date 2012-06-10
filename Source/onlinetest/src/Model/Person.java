/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.AdminController;
import java.sql.*;
import java.lang.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class Person {
    private int ID;
    private String Username;
    private String Password;
    private int Permission;
    
    public Person(){
        //Default Constructor
        this.ID = 0;
        this.Username = null;
        this.Password = null;
        this.Permission = 0;
    }
    
    public Person(int ID, String Username, String Password, int Permission){
        this.ID = ID;
        this.Username = Username;
        this.Password = Password;
        this.Permission = Permission;
    }
    /*
     * login()
     * return 0 if is Admin
     * return 1 if is User
     * else is not Person
     */
    public int login(String Username, String Password) throws SQLException, InstantiationException, IllegalAccessException{
        
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            Connection con = (Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            System.out.println("da connect");
            //create queries statement and assign values
            String query = "Select ID, Username, Password, Permission from tbl_person where Username = ?";
            PreparedStatement pstm = con.prepareStatement(query);    
            pstm.setString(1, Username);
            
//            String uname;
//            String pass = "'";
//            
//            String sql = "select count(*) from sinhvien where username = '"+uname+"' and pass = '"+pass+"'";
//            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //pstm.executeUpdate();  //if this query don't return data

            //get data return
            while (rs.next()) {
                //this.setID(rs.getInt(1));
                this.ID = rs.getInt(1);
                System.out.println(this.ID);
                this.Username = rs.getString(2);
                this.Password = rs.getString(3);
                this.Permission = rs.getInt(4);
                
            } //end while

            //close connection
            con.close();
            if((Username.equals(this.Username))&&(Password.equals(this.Password))){
            return this.Permission;
            }
                else return -1;
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : in login() 1");
            return -1;
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : in login() 2");
            return -1;
        }
        catch (NullPointerException ex) {
            return -1;
        }
        
        
        //return true;
    }
    
    public void logout(){
        
    }
    
    public boolean checkLogin(){
        return true;
    }
    
    public void changePassword(){
        
    }
    
    public int getID(){
        return this.ID;
    }
    
    public String getUsername(){
        return this.Username;
    }
    
    public String getPassword(){
        return this.Password;
    }
    
    public int getPermission(){
        return this.Permission;
    }
    
    public void setID(int ID){
        this.ID = ID;
    }
    
    public void setUsername(String Username){
        this.Username = Username;
    }
    
    public void setPassword(String Password){
        this.Password = Password;
    }
    
    public void setPermission(int Permission){
        this.Permission = Permission;
    }
}
