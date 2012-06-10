/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Administrator
 */
public class Question {
    private int ID;
    private String Content;
    private String PlanA;
    private String PlanB;
    private String PlanC;
    private String PlanD;
    private int Answer;
    private int Difficulty;
    private String Subjects;
    
    public Question(){
        this.ID = 0;
        this.Content = null;
        this.PlanA = null;
        this.PlanB = null;
        this.PlanC = null;
        this.PlanD = null;
        this.Answer = 0;
        this.Difficulty = 0;
        this.Subjects = null;
    }
    
    public Question(int ID, String Content, String PlanA, String PlanB, String PlanC, String PlanD, int Answer, int Difficulty, String Subjects){
        this.ID = ID;
        this.Content = Content;
        this.PlanA = PlanA;
        this.PlanB = PlanB;
        this.PlanC = PlanC;
        this.PlanD = PlanD;
        this.Answer = Answer;
        this.Difficulty = Difficulty;
        this.Subjects = Subjects;
    }
    
    public void setID(int ID){
        this.ID = ID;
    }
    
    public void setContent(String Content){
        this.Content = Content;
    }
    
    public void setPlanA(String PlanA){
        this.PlanA = PlanA;
    }
    
    public void setPlanB(String PlanB){
        this.PlanA = PlanB;
    }
     
    public void setPlanC(String PlanC){
        this.PlanA = PlanC;
    }
      
    public void setPlanD(String PlanD){
        this.PlanA = PlanD;
    }
    
    public void setAnswer(int Answer){
        this.Answer = Answer;
    }
    
    public void setDifficulty(int Difficulty){
        this.Difficulty = Difficulty;
    }
    
    public void setSubjects(String Subjects){
        this.Subjects = Subjects;
    }
    
    public int getID(){
        return this.ID;
    }
    
    public String getContent(){
        return this.Content;
    }
    
    public String getPlanA(){
        return this.PlanA;
    }
    
    public String getPlanB(){
        return this.PlanB;
    }
    
    public String getPlanC(){
        return this.PlanC;
    }
    
    public String getPlanD(){
        return this.PlanD;
    }
    
    public int getAnswer(){
        return this.Answer;
    }
    
    public int getDifficulty(){
        return this.Difficulty;
    }
    
    public String getSubjects(){
        return this.Subjects;
    }
}
