package cn.liuyanqi.service;

import cn.liuyanqi.dao.IUserDao;
import cn.liuyanqi.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @BelongsProject: projectHouse
 * @BelongsPackage: cn.liuyanqi.service
 * @Author: 7
 * @CreateTime: 2018-12-22 09:00
 * @Description: user
 * @Version: 1.0
 */
@Service("userService")
public class UserServiceImpl implements IUserService{

    @Autowired
    private IUserDao userDao;
    @Override
    public List<User> checkLogin(User user) {
        List<User> users = userDao.checkLogin(user);
        return users;
    }

    public IUserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }
}
