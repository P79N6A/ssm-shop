package com.lly.service.impl;


import com.lly.mapper.UserMapper;
import com.lly.pojo.User;
import com.lly.pojo.UserExample;
import com.lly.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User getUserById(Integer id) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andIdEqualTo(id);
        List<User> userList = userMapper.selectByExample(userExample);
        if(userList!=null){
            return userList.get(0);
        }
        return null;
    }
}
