<template>
  <div class="login">
    <!-- 导航栏 -->
    <van-nav-bar
      class="page-navbar"
      title="注册/登录"
    >
      <van-icon
        slot="left"
        name="cross"
        @click="$router.back()"
      ></van-icon>
    </van-nav-bar>
    <!-- 导航栏 -->

    <!-- 表单 -->
    <van-field
      v-model="user.name"
      type="tel"
      maxlength="11"
      placeholder="请输入手机号"
      ref="mobile"
    >
    <van-icon slot="left-icon" class-prefix="icon" name="shouji"></van-icon>
    </van-field>
    <van-field
      v-model="user.password"
      type="tel"
      maxlength="6"
      placeholder="请输入验证码"
      ref="code"
    >
      <van-icon slot="left-icon" class-prefix="icon" name="mima"></van-icon>
      <van-button
        slot="button"
        size="small"
        :type="isSending ? 'default' : 'primary'"
        :disabled="isSending"
      >
      <!-- @click="onSendCode" -->
        <van-count-down
          ref="countDown"
          v-if="isSending"
          :time="1000 * 60"
          format="ss s"
          :auto-start="false"
          @finish="isSending = false"
        />
        <span v-else>获取验证码</span>
      </van-button>
    </van-field>
    <!-- /表单 -->

    <!-- 登录按钮 -->
    <div class="login-btn-box">
      <van-button color="#6db4fb" type="info" @click="onLogin">登录</van-button>
    </div>
    <!-- /登录按钮 -->
  </div>
</template>

<script>
import { login, sendSmsCode } from '@/api/user'

export default {
  name: 'LoginPage',
  components: {},
  props: {},
  data () {
    return {
      user: {
        name: '',
        password: ''
      },
      isSending: false
    }
  },
  computed: {},
  watch: {},
  created () {},
  methods: {
    async onLogin () {
      if (!this.checkMobile() || !this.checkCode()) {
        return
      }

      this.$toast.loading({
        duration: 0, // 持续时间，0表示持续展示不停止
        forbidClick: true, // 是否禁止背景点击
        message: '登录中...' // 提示消息
      })
      try {
        const { data } = await login(this.user)
        // res.data.data => { token: 'xxx', refresh_token: 'xxx' }
        this.$store.commit('setUser', data.data.token)

        // 提示 success 或者 fail 的时候，会先把其它的 toast 先清除
        this.$toast.success('登录成功')

        // 跳转到首页
        const redirect = this.$route.query.redirect || '/'
        this.$router.replace(redirect)
      } catch (err) {
        console.log('登录失败', err)
        this.$toast.fail('登录失败，手机号或验证码错误')
      }
    },

    // async onSendCode () {
    //   const { mobile } = this.user
    //   if (!this.checkMobile()) {
    //     return
    //   }

    //   // 显示倒计时
    //   this.isSending = true

    //   // 让验证码输入框聚焦
    //   this.$refs.code.focus()

    //   // 开始倒计时
    //   this.$nextTick(() => {
    //     this.$refs.countDown.start()
    //   })

    //   // 发送短信
    //   try {
    //     await sendSmsCode(mobile)
    //   } catch (err) {
    //     let message = '发送失败，请稍后重试'
    //     if (err.response.status === 429) {
    //       message = '1分钟内只能发送1次，请稍后重试'
    //     }
    //     this.$toast({
    //       message,
    //       position: 'top'
    //     })
    //     // 关闭倒计时
    //     this.isSending = false
    //   }
    // },

    checkMobile () {
      const { name } = this.user
      if (!name) {
        this.$toast({
          message: '手机号码不能为空',
          position: 'top'
        })
        this.$refs.name.focus()
        return false
      }
      if (!/^1[3578]\d{9}$/.test(name)) {
        this.$toast({
          message: '手机号码格式错误',
          position: 'top'
        })
        this.$refs.name.focus()
        return false
      }
      return true
    },

    checkCode () {
      const { password } = this.user
      if (!password) {
        this.$toast({
          message: '验证码不能为空',
          position: 'top'
        })
        this.$refs.password.focus()
        return false
      }
      if (!/^\d{6}$/.test(password)) {
        this.$toast({
          message: '验证码格式错误',
          position: 'top'
        })
        this.$refs.password.focus()
        return false
      }
      return true
    }
  }
}
</script>

<style scoped lang="less">
.login {
  .login-btn-box {
    padding: 20px;
    .van-button {
      width: 100%;
    }
  }
  .van-cell {
    align-items: center;
  }
}
</style>
