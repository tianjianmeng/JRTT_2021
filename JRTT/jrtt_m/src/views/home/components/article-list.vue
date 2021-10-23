<template>
  <div class="article-list">
    <van-pull-refresh v-model="refreshLoading" @refresh="onRefresh">
      <van-list
        v-model="loading"
        :finished="finished"
        finished-text="没有更多了"
        @load="onLoad"
      >
        <article-item
          :article="article"
          v-for="(article, index) in list"
          :key="index"
        />
      </van-list>
    </van-pull-refresh>
  </div>
</template>

<script>
import ArticleItem from '@/components/article-item'
import { getArticle } from '@/api/article'

export default {
  name: '',
  components: {
    ArticleItem
  },
  props: {
    channel: {
      type: Object,
      required: true
    }
  },
  data () {
    return {
      loading: false, // 加载更多 loading
      refreshLoading: false, // 下拉刷新 loading
      list: [], // 数据列表
      finished: false, // 是否结束
      timestamp: null // 请求下一页的时间戳
    }
  },
  computed: {},
  watch: {},
  created () {},
  mounted () {},
  methods: {
    async onLoad () {
      // 1. 请求获取数据
      const { data } = await getArticle()


      // 2. 将数据添加到当前频道的文章列表中
      // ...数组，数组的展开操作符，它会把数组元素一个一个的拿出来，传递给使用的位置
      const { result } = data

      console.log(result)
      this.list.push(...result)

      // 3. 将 loading 设置为 false
      this.loading = false
      this.finished = true
    }
    ,
    async onRefresh () {
      // 1. 请求获取最新数据
      const { data } = await getArticle()

      // 2. 把数据放到列表的顶部
      const { result } = data
      this.list.unshift(...result)

      // 3. 停止下拉刷新的转圈圈
      this.refreshLoading = false
      //this.finished = true
      // 4. 提示用户刷新成功
      const message = result.length
        ? `更新了${result.length}条新闻`
        : '暂无数据更新'
      this.$toast(message)
    }
  }
}
</script>

<style scoped>
.article-list {
  min-height: 80vh;
}
</style>
