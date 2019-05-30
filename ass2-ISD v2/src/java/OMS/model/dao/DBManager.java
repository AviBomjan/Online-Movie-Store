package OMS.model.dao;

import OMS.model.User;
import OMS.model.UserLog;
import java.sql.*;

/**
 *
 * @author George
 *
 * DBManager is the primary DAO class to interact with the database and perform
 * CRUD operations with the db. Firstly, complete the existing methods and
 * implement them into the application.
 *
 * So far the application uses the Read and Create operations in the view.
 * Secondly, improve the current view to enable the Update and Delete
 * operations.
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    //Find student by ID in the database
    public User findCustomer(String ID, String password) throws SQLException {
        ResultSet rs = st.executeQuery("select * from OMS.Customers where ID='"
                + ID
                + "' AND password='"
                + password
                + "'");

        String id = "";
        String pass = "";
        String name = "";
        String email = "";
        String dob = "";
        String phone = "";
        String role = "";
        boolean more = rs.next();
        if (more) {
            id = rs.getString("ID");

            pass = rs.getString("password");
            name = rs.getString("name");
            email = rs.getString("email");
            dob = rs.getString("dob");
            phone = rs.getString("phone");
            role = rs.getString("Role");
        }
            else{
                    return null;
                    }
            User customer = new User(id, email, name, password,phone, dob,role);
            return customer;
        
    }
        public ResultSet findUserLogbyiD(String ID) throws SQLException {
        ResultSet rs = st.executeQuery("select * from OMS.UserLog where ID='"+ ID + "'");
        return rs;
        
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
    public void Register(String ID, String email, String name, String password, String phone, String dob,String role) throws SQLException {
        st.executeUpdate("INSERT INTO OMS.Customers VALUES ('" + ID + "','" + email + "','" + name + "','" + password + "','"+phone+"','" + dob + "','"+role+"')"); //code for add-operation
    }
    public void AddLog(String ID,String Time,String out) throws SQLException {
        st.executeUpdate("INSERT INTO OMS.UserLog VALUES('"+ID+"' ,'"+Time+"','"+out+"')"); //code for add-operation
    }
     public void deleteLog(String ID) throws SQLException{
        //code for delete-operation
        
        String deleteQueryString = "delete from OMS.UserLog where ID= '" + ID + "' ";
        st.executeUpdate(deleteQueryString);

    }
     public ResultSet searchLog(String ID,String Input) throws SQLException{
        String x = "select * from OMS.UserLog where ID='"+ ID + "' AND LoginTime Like '"+Input+" %'";
        
        ResultSet s =st.executeQuery(x);
        return s;
     }
    //update a student details in the database
    public void updateStudent(String ID, String email, String name, String password, String phone, String dob) throws SQLException {
         st.executeUpdate("update Customers set name='"+name+"',email='"+email+"',password='"+password+"',phone='"+phone+"', dob='"+dob+"' where ID='"+ID+"'");//code for update-operation
    }

    //delete a student from the database
    public void deleteStudent(String ID) throws SQLException {
        st.executeUpdate("delete from Customers where ID = '"+ID+"'");//code for delete-operation
    }
}
