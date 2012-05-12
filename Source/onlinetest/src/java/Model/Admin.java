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

/**
 *
 * @author Phan Duc Chien
 */
public class Admin extends Person{
    private ArrayList<User> users;
    private ArrayList<MyClass> myClasses;
    private ArrayList<Subjects> subjectses;
    private ArrayList<Question> questions;
    private ArrayList<Test> tests;

    public Admin(){
        this.users = new ArrayList<User>();
        this.setUsers();
        this.myClasses = new ArrayList<MyClass>();
        this.setMyClasses();
        this.subjectses = new ArrayList<Subjects>();
        this.setSubjectses();
        this.questions = new ArrayList<Question>();
        this.setQuestions();
        this.tests = new ArrayList<Test>();
        this.setTests();
    }
    
    public Admin(ArrayList<User> users, ArrayList<MyClass> myClasses, ArrayList<Subjects> subjectses, ArrayList<Question> questions, ArrayList<Test> tests) {
        this.users = users;
        this.myClasses = myClasses;
        this.subjectses = subjectses;
        this.questions = questions;
        this.tests = tests;
    }

    public void setMyClasses() {
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "SELECT ID, ClassName FROM tbl_class";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //get data return
            while (rs.next()) {
                MyClass myClass = new MyClass();
                myClass.setID(rs.getInt(1));
                myClass.setClassName(rs.getString(2));
                this.myClasses.add(myClass);
            } //end while

            //close connection
            con.close();
            
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 2");
        }
    }

    public void setQuestions() {
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "SELECT tbl_question.ID, Content, PlanA, PlanB ,PlanC , PlanD, Answer, Difficulty, tbl_subjects.SubjectsName "
                    + "FROM tbl_question, tbl_subjects "
                    + "WHERE tbl_question.IDSubjects = tbl_subjects.ID";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //get data return
            while (rs.next()) {
                Question question = new Question();
                question.setID(rs.getInt(1));
                question.setContent(rs.getString(2));
                question.setPlanA(rs.getString(3));
                question.setPlanB(rs.getString(4));
                question.setPlanC(rs.getString(5));
                question.setPlanD(rs.getString(6));
                question.setAnswer(rs.getInt(7));
                question.setDifficulty(rs.getInt(8));
                question.setSubjects(rs.getString(9));
                this.questions.add(question);
            } //end while

            //close connection
            con.close();
            
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 2");
        }
    }

    public void setSubjectses() {
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "SELECT ID, SubjectsName FROM tbl_subjects";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //get data return
            while (rs.next()) {
                Subjects subjects = new Subjects();
                subjects.setID(rs.getInt(1));
                subjects.setSubjectsName(rs.getString(2));
                this.subjectses.add(subjects);
            } //end while

            //close connection
            con.close();
            
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 2");
        }
    }

    public void setTests() {
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "SELECT tbl_test.ID, TestName, NumberOfQuestion, NumberOfDifficulty, TimeStart, TimeEnd, TimeDoing, tbl_subjects.SubjectsName "
                    + "FROM tbl_test,  tbl_subjects "
                    + "WHERE IDSubjects = tbl_subjects.ID";
            PreparedStatement pstm = con.prepareStatement(query);    
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //pstm.executeUpdate();  //if this query don't return data

            //get data return
            while (rs.next()) {
                Test test = new Test();
                test.setID(rs.getInt(1));
                test.setTestName(rs.getString(2));
                test.setNumberOfQuestion(rs.getInt(3));
                test.setNumberOfDifficulty(rs.getInt(4));
                test.setTimeStart(rs.getDate(5));
                test.setTimeEnd(rs.getDate(6));
                test.setTimeDoing(rs.getInt(7));
                test.setSubjectsName(rs.getString(8));
                this.tests.add(test);
                
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

    public void setUsers() {
        try {
            //create connection
            Class.forName(Driver.dbClass); 
            java.sql.Connection con = (java.sql.Connection) DriverManager.getConnection (Driver.dbUrl, Driver.dbUser, Driver.dbPass);
      
            //create queries statement and assign values
            String query = "SELECT tbl_person.ID, Username, Password, tbl_class.ID, tbl_class.ClassName "
                    + "FROM tbl_person, tbl_class "
                    + "WHERE Permission != 0 and  IDClass = tbl_class.ID";
            PreparedStatement pstm = con.prepareStatement(query);  
            
            //execute queries
            ResultSet rs = pstm.executeQuery();

            //get data return
            while (rs.next()) {
                User user = new User();
                user.setID(rs.getInt(1));
                user.setUsername(rs.getString(2));
                user.setPassword(rs.getString(3));
                user.setIDClass(rs.getInt(4));
                user.setClassName(rs.getString(5));
                this.users.add(user);
            } //end while

            //close connection
            con.close();
            
        } //end try

        catch(ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 1");
        }

        catch(SQLException e) {
            e.printStackTrace();
            System.out.println("ERR : public setMyClasses() 2");
        }
    }

    public ArrayList<MyClass> getMyClasses() {
        return myClasses;
    }

    public ArrayList<Question> getQuestions() {
        return questions;
    }

    public ArrayList<Subjects> getSubjectses() {
        return subjectses;
    }

    public ArrayList<Test> getTests() {
        return tests;
    }

    public ArrayList<User> getUsers() {
        return users;
    }
    
    
}
