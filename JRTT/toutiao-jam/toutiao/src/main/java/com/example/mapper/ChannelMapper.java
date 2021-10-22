package com.example.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.entity.Channel;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author testjava
 * @since 2021-10-22
 */
@Mapper
public interface ChannelMapper extends BaseMapper<Channel> {
    @Select("select * from channel")
    List<Channel> getChannelByStatus();
}
