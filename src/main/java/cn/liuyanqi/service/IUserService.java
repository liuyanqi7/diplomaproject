package cn.liuyanqi.service;

import cn.liuyanqi.entity.User;

import java.util.List;

/**
 * @BelongsProject: projectHouse
 * @BelongsPackage: cn.liuyanqi.service
 * @Author: 7
 * @CreateTime: 2018-12-21 18:47
 * @Description: user
 * @Version: 1.0
 */
public interface IUserService {

    List<User> checkLogin(User user);
}
