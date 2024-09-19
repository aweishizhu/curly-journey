<template>
  <router-view></router-view>
  <tab-bar v-if="isShowTabbar"></tab-bar>
</template>

<script setup>
import TabBar from './components/TabBar.vue'
import { useRoute } from 'vue-router'
import { ref, watch } from 'vue'
const route = useRoute()
const isShowTabbar = ref(true)
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
}
</style>