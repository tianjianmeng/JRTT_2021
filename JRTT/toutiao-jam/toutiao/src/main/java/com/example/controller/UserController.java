package com.example.controller;

import com.Common.JwtUtils;
import com.Common.R;
import com.example.entity.User;
import com.example.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2021-10-22
 */
@CrossOrigin
@RestController
@RequestMapping("/example/user")
public class UserController{
    @Autowired
    public UserService userService;

//    @RequestMapping(value = "/login",method = RequestMethod.POST)
//    @ResponseBody
//    public String login(@RequestHeader Map<String,Object> he,@RequestBody Map<String,Object> para) throws JsonProcessingException {
//        System.out.println(he);
//        String username=(String)para.get("username");
//        String password=(String)para.get("password");
//        //String username = 'name1';
//        //String password = '123456';
//        HashMap<String,Object> hs=new HashMap<>();
//        hs.put("token","token"+username+password);
//        ObjectMapper objectMapper=new ObjectMapper();
//        return objectMapper.writeValueAsString(hs);
//    }
//
//    @RequestMapping(value = "/test",method = RequestMethod.GET)
//    @ResponseBody
//    public String test(@RequestHeader Map<String,Object> he) throws JsonProcessingException {
//        System.out.println(he);
//        HashMap<String,Object> hs=new HashMap<>();
//        ObjectMapper objectMapper=new ObjectMapper();
//        return objectMapper.writeValueAsString(hs);
//    }

    @PostMapping("login")
    public R loginUser(@RequestBody User user) {
        String token = userService.login(user);
        return R.ok().data("token", token);
    }

    @GetMapping("UserInfo")
    public R getUserInfo(HttpServletRequest request) {
        Integer id = JwtUtils.getMemberIdByJwtToken(request);
        User user = userService.getById(id);
        return R.ok().data("userInfo", user);
    }
}