/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Phan Duc Chien
 */
public class Subjects {
    private int ID;
    private String SubjectsName;
    
    public Subjects(){
        
    }

    public Subjects(int ID) {
        this.ID = ID;
    }
    
    public Subjects(int ID, String SubjectsName) {
        this.ID = ID;
        this.SubjectsName = SubjectsName;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getSubjectsName() {
        return SubjectsName;
    }

    public void setSubjectsName(String SubjectsName) {
        this.SubjectsName = SubjectsName;
    }
    
    public void createSubjects(){
        
    }
    
    public void delSubjects(){
        
    }
    
    public void updateSubjects(){
        
    }
}
