<template>
  <div
      v-else
      class="article-item article-item-1"
      @click="onItemClick"
    >
      <div class="title-label">
        <div class="title van-multi-ellipsis--l3">{{ article.title }}</div>
        <div class="label">
          <span>{{ article.autName }}</span>
          <span>{{ article.pubdate }}</span>
        </div>
      </div>
      <van-image
        class="cover"
        fit="cover"
        v-bind:src="article.autPhoto"
        lazy-load
      />
    </div>
</template>

<script>
export default {
  name: 'ArticleInfo',
  components: {},
  props: {
    article: {
      type: Object,
      required: true
    }
  },
  data () {
    return {}
  },
  computed: {},
  watch: {},
  created () {},
  mounted () {},
  methods: {
    onItemClick () {
      this.$router.push({
        name: 'article',
        params: {
          articleId: this.article.artId
        }
      })
    }
  }
}
</script>

<style scoped lang="less">
.article-item {
  box-sizing: border-box;
  position: relative;
  display: flex;
  padding: 0 20px;
  background: #fff;
  .title {
    font-size: 15px;
  }
  .label {
    font-size: 12px;
    color: #b4b4b4;
    span {
      margin-right: 14px;
    }
  }
  &::after {
    position: absolute;
    box-sizing: border-box;
    content: ' ';
    pointer-events: none;
    right: 0px;
    bottom: 0;
    left: 20px;
    right: 20px;
    border-bottom: 0.02667rem solid #ebedf0;
    transform: scaleY(0.5);
  }
}

.article-item-0 {
  flex-direction: column;
  justify-content: space-evenly;
  height: 68px;
}

.article-item-3 {
  flex-direction: column;
  justify-content: space-evenly;
  min-height: 169px;
  max-height: 185px;
  .cover {
    display: flex;
    justify-content: space-between;
    .cover-item {
      width: 110px;
      height: 73px;
    }
  }
}

.article-item-1 {
  height: 111px;
  align-items: center;
  justify-content: space-between;
  .title-label {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    width: 200px;
    height: 80px;
  }
  .cover {
    width: 120px;
    height: 80px;
  }
}
</style>
