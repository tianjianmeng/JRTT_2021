package com.example.controller;


import com.example.mapper.ChannelMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.Common.R;


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

    @GetMapping("/")
    public R selectChannel() {
        return R.ok();
    }

    @GetMapping("/message")
    public String ChannelMessage() {
        return "Success";
    }

    @GetMapping("/channels")
    public Object channels() {
        Object o = cm.getAllChannel();
        return R.data("channels",o);
    }
}
