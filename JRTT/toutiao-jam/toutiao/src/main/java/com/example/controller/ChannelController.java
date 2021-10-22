package com.example.controller;


import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.entity.Channel;
import com.example.mapper.ChannelMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.Common.R;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
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
@RequestMapping("/example/channel")
public class ChannelController {
    @Autowired
    private ChannelMapper cm ;

    @GetMapping("/Article")
    public R selectArticle() {
        return R.ok();
    }
    @GetMapping("/Article/Message")
    public String ArticleMessage() {
        return "Success";
    }
    @GetMapping("/Article/channels")
    public List<Channel> getChannels() {
        return cm.getChannelByStatus();
    }
}
