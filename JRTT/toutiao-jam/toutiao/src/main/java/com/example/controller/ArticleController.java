package com.example.controller;


import com.Common.R;
import com.example.mapper.ArticleMapper;
import com.example.mapper.ChannelMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

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
@Slf4j
@RestController
@RequestMapping("/example/article")
public class ArticleController {
    @Autowired
    private ArticleMapper am ;

    @GetMapping("/")
    public R selectArticle() {
        return R.ok();
    }

    @GetMapping("/message")
    public String ArticleMessage() {
        return "Success";
    }

    @GetMapping("/articles")
    public Map Articles() {   // How to use R's method to return the result?
        Object o = am.getAllArticles();
        Map map = new HashMap();
        map.put("result",o);
        return map;
    }

//    @GetMapping("/articles")
//    public R Articles() {   // How to use R's method to return the result?
//        return R.ok().data("result",am.getAllArticles());
//    }

}

