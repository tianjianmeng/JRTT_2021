/**
 * 频道相关接口
 */
import request from '@/utils/request'

/**
 * 获取所有频道列表
 */
export function getAllChannels () {
  return request({
    method: 'GET',
    url: '/example/channel/channels'
  })
}

export const addChannel = channel => {
  return request({
    method: 'PATCH',
    url: '/example/channel/channels',
    data: {
      channels: [channel]
    }
  })
}

export const deleteChannel = channelId => {
  return request({
    method: 'DELETE',
    url: `/example/channel/channels/${channelId}`
  })
}
