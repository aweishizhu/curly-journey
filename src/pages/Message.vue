<template>
  <van-cell-group v-for="item in lists" :key="item">
    <van-cell center :icon="item.img" :title="item.title" :value="item.value" :label="item.label" />
  </van-cell-group>
</template>

<script setup>
const lists = [
  {
    img: '/images/avatar1.jpg',
    title: '小米旗舰店',
    value: '星期一',
    label: "你好，我是小米官方客服，有什么可以帮助你的吗？"
  },
  {
    img: '/images/avatar2.jpg',
    title: 'vivo官方旗舰店',
    value: '星期二',
    label: "你好，我是vivo官方客服，有什么可以帮助你的吗？"
  },
  {
    img: '/images/avatar3.jpg',
    title: '法拉利官方旗舰店',
    value: '星期日',
    label: "你好，我是法拉利官方客服，有什么可以帮助你的吗？"
  },
  {
    img: '/images/avatar4.jpg',
    title: '兰博基尼官方旗舰店',
    value: '星期一',
    label: "你好，我是兰博基尼官方客服，有什么可以帮助你的吗？"
  }
]
</script>

<style lang="less" scoped>
:deep(.van-cell) {
  .van-cell__left-icon {
    width: 40px;
    height: 40px;

    .van-icon__image {
      width: 100%;
      height: 100%;
    }
  }

  .van-cell__title {
    .van-cell__label {
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
      width: 165px;
    }
  }
}
</style>