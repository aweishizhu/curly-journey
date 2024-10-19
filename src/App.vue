<template>
  <van-nav-bar :title="$route.meta.title" v-show="$route.meta.isShowNav" @click-left="onClickLeft"
    :left-arrow="$route.meta.isShowBack" fixed placeholder style="height: 46px" />
  <router-view></router-view>
  <tab-bar v-if="isShowTabbar"></tab-bar>
</template>

<script setup>
import TabBar from './components/TabBar.vue'
import { useRoute } from 'vue-router'
import { ref, watch } from 'vue'
import { useRouter } from 'vue-router'
const route = useRoute()
const isShowTabbar = ref(true)
const router = useRouter()

const onClickLeft = () => {
  if (history.length > 1) {
    router.back()
  } else {
    router.push({ name: 'home' })
  }
}

// 监听路由中的 isTab 是否为 true，如果为 true，展示底部 TabBar
watch(
  () => route.meta,
  val => {
    isShowTabbar.value = val.isTab
  }
)
</script>
<style>
#app {
  color: #2c3e50;
  line-height: 24px;

--van-nav-bar-background: #ae10e7;
 --van-nav-bar-title-text-color: #13ceeb;
 --van-nav-bar-icon-color: #fff;
}
</style>