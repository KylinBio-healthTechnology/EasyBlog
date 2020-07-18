package cdu.blog.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Log {

    private  int id;
    private  String userName;
    private  String operate;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date operateTime;
    //private Timestamp operateTime = new Timestamp((new java.util.Date().getTime()));
    private User user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate;
    }

    public Date getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(Date operateTime) {
        this.operateTime = operateTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", username='" + userName + '\'' +
                ", operate='" + operate + '\'' +
                ", operateTime=" + operateTime +
                '}';
    }
}
