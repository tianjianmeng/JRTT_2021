package com.example.service.impl;

import com.example.entity.Comment;
import com.example.mapper.CommentMapper;
import com.example.service.CommentService;
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
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

}
