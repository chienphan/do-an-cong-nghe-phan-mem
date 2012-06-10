/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Administrator
 */
public class TestOfUser {
    private int ID;
    private String TestName;
    private String SubjectsName;
    private int NumberOfQuestion;
    private int Done;
    private int CorrectAnswer;
    private float  Scores;
    private int TimeDoing;
    
    public TestOfUser(){
        this.ID = 0;
        this.TestName = null;
        this.SubjectsName = null;
        this.NumberOfQuestion = 0;
        this.Done = 0;
        this.CorrectAnswer = 0;
        this.Scores = 0;
        this.TimeDoing = 0;
    }
    
    public TestOfUser(int ID, String TestName, String SubjectsName, int NumberOfQuestion, int Done, int CorrectAnswer, float Scores, int TimeDoing){
        this.ID = ID;
        this.TestName = TestName;
        this.SubjectsName = SubjectsName;
        this.NumberOfQuestion = NumberOfQuestion;
        this.Done = Done;
        this.CorrectAnswer = CorrectAnswer;
        this.Scores = Scores;
        this.TimeDoing = TimeDoing;
    }
    
    public void setID(int ID){
        this.ID = ID;
    }
    
    public void setTestName(String TestName){
        this.TestName = TestName;
    }
    
    public void setSubjectsName(String SubjectsName){
        this.SubjectsName = SubjectsName;
    }
    
    public void setNumberOfQuestion(int NumberOfQuestion){
        this.NumberOfQuestion = NumberOfQuestion;
    }
    
    public void setDone(int Done){
        this.Done = Done;
    }
    
    public void setCorrectAnswer(int CorrectAnswer){
        this.CorrectAnswer = CorrectAnswer;
    }
    
    public void setScores(float Scores){
        this.Scores = Scores;
    }
    
    public void setTimeDoing(int TimeDoing){
        this.TimeDoing = TimeDoing;
    }
    
    public int getID(){
        return this.ID;
    }
    
    public String getTestName(){
        return this.TestName;
    }
    
    public String getSubjectsName(){
        return this.SubjectsName;
    }
    
    public int getNumberOfQuestion(){
        return this.NumberOfQuestion;
    }
    
    public int getDone(){
        return this.Done;
    }
    
    public int getCorrectAnswer(){
        return this.CorrectAnswer;
    }
    
    public float getScores(){
        return this.Scores;
    }
    
    public int getTimeDoing(){
        return this.TimeDoing;
    }
}
