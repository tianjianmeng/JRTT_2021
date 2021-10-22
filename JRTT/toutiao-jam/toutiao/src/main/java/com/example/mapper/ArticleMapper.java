package com.example.mapper;

import com.example.entity.Article;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Channel;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author testjava
 * @since 2021-10-22
 */
public interface ArticleMapper extends BaseMapper<Article> {
    @Select("select * from article")
    List<Article> getAllArticles();
}
