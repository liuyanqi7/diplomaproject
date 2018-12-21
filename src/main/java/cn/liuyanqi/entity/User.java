package cn.liuyanqi.entity;

/**
 * @BelongsProject: projectHouse
 * @BelongsPackage: cn.liuyanqi.entity
 * @Author: 7
 * @CreateTime: 2018-12-21 17:05
 * @Description: user
 * @Version: 1.0
 */
public class User {
        private Integer id;
        private String userName;
        private String userPass;
        private String telPhone;
        private String realName;
        private Integer flag;

    public User() {
    }

    public User(Integer id, String userName, String userPass, String telPhone, String realName, Integer flag) {
        this.id = id;
        this.userName = userName;
        this.userPass = userPass;
        this.telPhone = telPhone;
        this.realName = realName;
        this.flag = flag;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public String getTelPhone() {
        return telPhone;
    }

    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }
}
