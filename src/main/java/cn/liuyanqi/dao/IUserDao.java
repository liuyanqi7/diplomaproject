package cn.liuyanqi.dao;

import cn.liuyanqi.entity.User;

import java.util.List;

/**
 * @BelongsProject: projectHouse
 * @BelongsPackage: cn.liuyanqi.dao
 * @Author: 7
 * @CreateTime: 2018-12-21 17:04
 * @Description: user管理
 * @Version: 1.0
 */
public interface IUserDao {

    /*
     *用户登录
     */
    List<User> checkL0ogin(User user);

}
