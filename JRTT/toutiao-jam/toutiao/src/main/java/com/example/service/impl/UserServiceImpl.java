package com.example.service.impl;

import com.Common.JwtUtils;
import com.alibaba.druid.util.StringUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.entity.User;
import com.example.handler.GuliException;
import com.example.mapper.UserMapper;
import com.example.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-10-22
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Override
    public String login(User user) {
        String name= user.getName();
        String password=user.getPassword();
        if (StringUtils.isEmpty(name)||StringUtils.isEmpty(password))
            throw new GuliException(20001,"登陆失败");
        QueryWrapper<User> wrapper=new QueryWrapper<>();
        wrapper.eq("name",name);
        User one= baseMapper.selectOne(wrapper);
        if(user==null)
            throw new GuliException(20001,"登陆失败");
        if(!password.equals(one.getPassword()))
            throw new GuliException(20001,"登陆失败");
        String jwtToken= JwtUtils.getJwtToken(one.getId(),one.getName());
        return jwtToken;
    }
}
