package cn.liuyanqi.controller;

import cn.liuyanqi.entity.User;
import cn.liuyanqi.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @BelongsProject: projectHouse
 * @BelongsPackage: cn.liuyanqi.controller
 * @Author: 7
 * @CreateTime: 2018-12-22 09:27
 * @Description: user
 * @Version: 1.0
 */
@Controller
@RequestMapping(value="/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/userLogin")
    public String login(User user, HttpSession session, Model model){
        System.out.println(user.getUserName());
        List<User> users = userService.checkLogin(user);
        if(users.size()>0){
            session.setAttribute("user", user);
            return "/ftl/list1.htm";
        }
        else{
            model.addAttribute("msg", "登录失败");
            return "login.ftl";
        }
    }
    @RequestMapping("/login")
    public ModelAndView toLogin(){
        System.out.println("go");
        return new ModelAndView("login.ftl");
    }
    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }
}
