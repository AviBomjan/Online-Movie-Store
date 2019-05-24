package OMS.model.dao;

import OMS.model.User;
import java.sql.*;

/**
 *
 * @author George
 * 
 * DBManager is the primary DAO class to interact with the database and perform CRUD operations with the db.
 * Firstly, complete the existing methods and implement them into the application.
 * 
 * So far the application uses the Read and Create operations in the view.
 * Secondly, improve the current view to enable the Update and Delete operations.
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    //Find student by ID in the database
    public User findCustomer(String ID, String password) throws SQLException {
        ResultSet rs = st.executeQuery("Select ID ,password from ISDUSER.STUDENTS");
        User student = new User();
        String inputPassword = "";
        String inputID = "";
        while (rs.next()){
           inputPassword = rs.getString("password");
           inputID = rs.getString("ID");
        }
        if(student.matchPassword(inputPassword) && student.matchID(inputID))
            return student;
        else
            return null;
    }

    //Check if a student exist in the database
    public boolean checkStudent(String ID, String password) throws SQLException {
       //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        //verify if the student exists
        return false;
    }

    //Add a student-data into the database
    public void Register(String ID, String email, String name, String password, String dob) throws SQLException {        
        st.executeUpdate("INSERT INTO OMS.Customers VALUES ('"+ID+"','"+email+"','"+name+"','"+password+"','"+dob+"')"); //code for add-operation
    }

    //update a student details in the database
    public void updateStudent(String ID, String email, String name, String password, String dob) throws SQLException {
        //code for update-operation
    }
    
    //delete a student from the database
    public void deleteStudent(String ID) throws SQLException{
        //code for delete-operation
    }
}
