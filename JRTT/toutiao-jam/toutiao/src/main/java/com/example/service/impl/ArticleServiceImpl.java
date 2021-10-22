package com.example.service.impl;

import com.example.entity.Article;
import com.example.mapper.ArticleMapper;
import com.example.service.ArticleService;
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
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

}
