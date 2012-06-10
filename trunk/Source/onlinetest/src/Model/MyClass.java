/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Administrator
 */
public class MyClass {
    private int ID;
    private String ClassName;
    
    public MyClass(){
        this.ID = 0;
        this.ClassName = null;
    }
    
    public MyClass(int ID, String Classname){
        this.ID = ID;
        this.ClassName = Classname;
    }
    
    public void setID(int ID){
        this.ID = ID;
    }
    
    public void setClassName(String ClassName){
        this.ClassName = ClassName;
    }

    public String getClassName() {
        return ClassName;
    }

    public int getID() {
        return ID;
    }
    
    public void createClass(String classname){
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "INSERT INTO tbl_class (ID, ClassName) VALUES (NULL, ?)";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            pstm.setString(1, classname);
                       
            //execute queries
            //ResultSet rs = pstm.executeQuery();

            pstm.executeUpdate();  //if this query don't return data

            //close connection
            con.close();
        } //end try
        
        catch(Exception e){
            e.printStackTrace();
            System.out.println("ERR : in createUser()");
        }
    }
    
    public void delClass(int id){
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "DELETE FROM tbl_class WHERE ID = ?";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            pstm.setInt(1, id);
              
            //execute queries
            //ResultSet rs = pstm.executeQuery();

            pstm.executeUpdate();  //if this query don't return data

            //close connection
            con.close();
        } //end try
        
        catch(Exception e){
            e.printStackTrace();
            System.out.println("ERR : in delUser()");
        }
    }
    
    public void updateClass(int id, String classname){
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "UPDATE  tbl_class SET  ClassName = ? WHERE  tbl_class.ID = ?";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            pstm.setString(1, classname);
            pstm.setInt(2, id);
              
            //execute queries
            //ResultSet rs = pstm.executeQuery();

            pstm.executeUpdate();  //if this query don't return data

            //close connection
            con.close();
        } //end try
        
        catch(Exception e){
            e.printStackTrace();
            System.out.println("ERR : in updateUser()");
        }
    }
}
