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
import java.util.Date;

/**
 *
 * @author Administrator
 */
public class Test {
    private int ID;
    private String TestName;
    private int NumberOfQuestion;
    private int NumberOfDifficulty;
    private Date TimeStart;
    private Date TimeEnd;
    private int  TimeDoing;
    private String SubjectsName;
    
    public Test(){
        this.ID = 0;
        this.TestName = null;
        this.NumberOfQuestion = 0;
        this.NumberOfDifficulty = 0;
        this.TimeStart = new Date();
        this.TimeEnd = new Date();
        this.TimeDoing = 0;
        this.SubjectsName = null;
    }
    
    public Test(int ID, String TestName, int NumberOfQuestion, int NumberOfDifficulty, Date TimeStart, Date TimeEnd, int TimeDoing, String SubjectsName){
        this.ID = ID;
        this.TestName = TestName;
        this.NumberOfQuestion = NumberOfQuestion;
        this.NumberOfDifficulty = NumberOfDifficulty;
        this.TimeStart = TimeStart;
        this.TimeEnd = TimeEnd;
        this.TimeDoing = TimeDoing;
        this.SubjectsName = SubjectsName;
    }
    
    public Test(int ID){
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "SELECT tbl_test.ID, TestName, NumberOfQuestion, NumberOfDifficulty, TimeStart, TimeEnd, TimeDoing, tbl_subjects.SubjectsName "
                    + "FROM tbl_test,  tbl_subjects "
                    + "WHERE tbl_test.ID = ? "
                    + "and  IDSubjects = tbl_subjects.ID";
            PreparedStatement pstm = con.prepareStatement(query);    
            pstm.setString(1, String.valueOf(ID));
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //pstm.executeUpdate();  //if this query don't return data

            //get data return
            while (rs.next()) {
                this.setID(rs.getInt(1));
                this.setTestName(rs.getString(2));
                this.setNumberOfQuestion(rs.getInt(3));
                this.setNumberOfDifficulty(rs.getInt(4));
                this.setTimeStart(rs.getDate(5));
                this.setTimeEnd(rs.getDate(6));
                this.setTimeDoing(rs.getInt(7));
                this.setSubjectsName(rs.getString(8));
                
            } //end while

            //close connection
            con.close();
            
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : public Test(int ID) 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : public Test(int ID) 2");
        }
    }
    
    public void setID(int ID){
        this.ID = ID;
    }
    
    public void setTestName(String TestName){
        this.TestName = TestName;
    }
    
    public void setNumberOfQuestion(int NumberOfQuestion){
        this.NumberOfQuestion = NumberOfQuestion;
    }
    
    public void setNumberOfDifficulty(int NumberOfDifficulty){
        this.NumberOfDifficulty = NumberOfDifficulty;
    }
    
    public void setTimeStart(Date TimeStart){
        this.TimeStart = TimeStart;
    }
    
    public void setTimeEnd(Date TimeEnd){
        this.TimeEnd = TimeEnd;
    }
    
    public void setTimeDoing(int TimeDoing){
        this.TimeDoing = TimeDoing;
    }
    
    public void setSubjectsName(String SubjectsName){
        this.SubjectsName = SubjectsName;
    }
    
    public int getID(){
        return this.ID;
    }
    
    public String getTestName(){
        return this.TestName;
    }
    
    public int getNumberOfQuestion(){
        return this.NumberOfQuestion;
    }
    
    public int getNumberOfDifficulty(){
        return this.NumberOfDifficulty;
    }
    
    public Date getTimeStart(){
        return this.TimeStart;
    }
    
    public Date getTimeEnd(){
        return this.TimeEnd;
    }
    
    public int getTimeDoing(){
        return this.TimeDoing;
    }
    
    public String getSubjectsName(){
        return this.SubjectsName;
    }
}
