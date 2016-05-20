
import java.util.Calendar;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Will
 */
public class Message {
    private String title, message;
    private Calendar calender;

    public Message(String title, String message, Calendar calender) {
        this.title = title;
        this.message = message;
        this.calender = calender;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Calendar getCalender() {
        return calender;
    }

    public void setCalender(Calendar calender) {
        this.calender = calender;
    }
    
}
