package OMS.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author George
 */

public class UserLog implements Serializable {

    
    private String ID;   
    private String  LoginTime;   
    private String LogOutTime;    

    public UserLog(String ID, String LoginTime, String LogOutTime) {
        this.ID = ID;
        this.LoginTime = LoginTime;
        this.LogOutTime = LogOutTime;
    }

    public String getLoginTime() {
        return LoginTime;
    }

    public void setLoginTime(String LoginTime) {
        this.LoginTime = LoginTime;
    }

    public String getLogOutTime() {
        return LogOutTime;
    }

    public void setLogOutTime(String LogOutTime) {
        this.LogOutTime = LogOutTime;
    }

    public UserLog() {
    }

    public String getID() {
        return ID;
    }



    public void setID(String ID) {
        this.ID = ID;
    }


       
     



}//end class
