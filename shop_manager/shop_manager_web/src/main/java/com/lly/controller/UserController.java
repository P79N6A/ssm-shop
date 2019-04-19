package com.lly.controller;

import com.lly.pojo.User;
import com.lly.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Author:  lly
 * Date:    2019/4/15 16:20
 * Description:
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/user/{userid}")
    @ResponseBody
    public User getUserById(@PathVariable Integer userid){
        User user = userService.getUserById(userid);
        return user;
    }


}
