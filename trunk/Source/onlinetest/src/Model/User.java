/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class User extends Person {
    private int IDClass;
    private String ClassName;
    private ArrayList<TestOfUser> ListTest;
    
    public User(){
        this.IDClass = 0;
        this.ListTest = new ArrayList<TestOfUser>();
    }
    
    public User(int ID){
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "Select ID, Username, Password, Permission, IDClass from tbl_person where ID = ?";
            PreparedStatement pstm = con.prepareStatement(query);    
            pstm.setString(1, String.valueOf(ID));
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //pstm.executeUpdate();  //if this query don't return data

            //get data return
            while (rs.next()) {
                this.setID(rs.getInt(1));
                this.setUsername(rs.getString(2));
                this.setPassword(rs.getString(3));
                this.setPermission(rs.getInt(4));
                this.IDClass = rs.getInt(5);
            } //end while

            //close connection
            con.close();
            //this.IDClass = 0;
            this.ListTest = new ArrayList<TestOfUser>();
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : in login() 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : in login() 2");
        }
    }
    
    public User(String name){
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "Select ID, Username, Password, Permission, IDClass from tbl_person where Username = ?";
            PreparedStatement pstm = con.prepareStatement(query);    
            pstm.setString(1, name);
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //pstm.executeUpdate();  //if this query don't return data

            //get data return
            while (rs.next()) {
                this.setID(rs.getInt(1));
                this.setUsername(rs.getString(2));
                this.setPassword(rs.getString(3));
                this.setPermission(rs.getInt(4));
                this.IDClass = rs.getInt(5);
            } //end while

            //close connection
            con.close();
            //this.IDClass = 0;
            this.ListTest = new ArrayList<TestOfUser>();
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : in login() 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : in login() 2");
        }
        
    }
    
    public User(int IDClass, ArrayList<TestOfUser> ListTest){
        this.IDClass = IDClass;
        this.ListTest = ListTest;
    }
       
    //List danh sach cac bai test cua user.
    public ArrayList<TestOfUser> listTest() throws ClassNotFoundException{
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "SELECT tbl_test.ID, TestName, SubjectsName, Done, NumberOfQuestion, CorrectAnswer, Scores, tbl_test.TimeDoing "
                    + "FROM tbl_person, tbl_person_test, tbl_test, tbl_subjects "
                    + "WHERE tbl_person.ID = ? "
                    + "and tbl_person.ID = tbl_person_test.IDPerson "
                    + "and  tbl_person_test.IDTest = tbl_test.ID "
                    + "and tbl_test.IDSubjects = tbl_subjects.ID";
            PreparedStatement pstm = con.prepareStatement(query);  
            pstm.setString(1, String.valueOf(this.getID()));
                       
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //pstm.executeUpdate();  //if this query don't return data

            //get data return//int i = 0;
            while (rs.next()) {
                //i++;
                TestOfUser test = new TestOfUser();
                test.setID(rs.getInt(1));
                test.setTestName(rs.getString(2));
                test.setSubjectsName(rs.getString(3));
                test.setDone(rs.getInt(4));
                test.setNumberOfQuestion(rs.getInt(5));
                test.setCorrectAnswer(rs.getInt(6));
                test.setScores(rs.getFloat(7));
                test.setTimeDoing(rs.getInt(8));
                this.ListTest.add(test);
                //ArrayList<TestOfUser> myList = new ArrayList<TestOfUser>();
                //myList.add(test);
                //System.out.println("Size of list: "+  this.ListTest.size());
                //System.out.println("name of subjects: "+ this.ListTest.get(0).getSubjectsName());
                //test = null;
            } //end while

            //close connection
            con.close();
            
            return this.ListTest;
            
        } //end try
        
        catch(Exception e){
            e.printStackTrace();
            System.out.println("ERR : in login() 1");
            return null;
        }
    }
        
    public void setIDClass(int IDClass){
        this.IDClass = IDClass;
    }
    
    public void setListTest(ArrayList<TestOfUser> ListTest){
        this.ListTest = ListTest;
    }

    public void setClassName(String ClassName) {
        this.ClassName = ClassName;
    }

    public String getClassName() {
        return this.ClassName;
    }
    
    public int getIDClass(){
        return this.IDClass;
    }
    
    public List<TestOfUser> getListTest(){
        return this.ListTest;
    }
    
    public void createUser(String uname, String upass, int upermission, int IDClass) throws ClassNotFoundException, SQLException{
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "INSERT INTO tbl_person (ID, Username, Password, Permission, IDClass) VALUES (NULL, ?, ?, ?, ?)";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            pstm.setString(1, uname);
            pstm.setString(2, upass);
            pstm.setInt(3, upermission);
            pstm.setInt(4, IDClass);
            
                       
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
    
    public void delUser(int ID){
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "DELETE FROM tbl_person WHERE ID = ?";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            pstm.setInt(1, ID);
              
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
    
    public void updateUser(int ID, String uname, String upass, int upermission, int IDClass){
        try{
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
            
            //create queries statement and assign values
            String query = "UPDATE  tbl_person SET  Username = ?, Password = ?, Permission = ?, IDClass =  ? WHERE  tbl_person.ID = ?";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            pstm.setString(1, uname);
            pstm.setString(2, upass);
            pstm.setInt(3, upermission);
            pstm.setInt(4, IDClass);
            pstm.setInt(5, ID);
              
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
