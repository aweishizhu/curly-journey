<template>
  <div class="home-product">
    <ul>
      <li v-for="item in brandList" :key="item.id">
        <img :src="item.pic_url" alt="">
        <h4>{{ item.name }}</h4>
      </li>
    </ul>
  </div>
</template>
<script setup>
const brandList = [
  { id: 1, name: '直播', pic_url: '/images/pro1.jpg' },
  { id: 2, name: '推荐', pic_url: '/images/pro2.jpg' },
  { id: 3, name: '补贴', pic_url: '/images/pro3.jpg' },
  { id: 4, name: '分享', pic_url: '/images/pro4.jpg' },
]
</script>
<style lang="less" scoped>
.home-product>ul {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;

  li {
    width: 49.5%;
    position: relative;

    img {
      width: 100%;
      height: 80%;
    }

    h4 {
      font-size: 14px;
      position: absolute;
      left: 2px;
      top: -13px;
      background-color: red;
      color: #fff;
      border-radius: 10%;
      padding: 1px 3px;
    }
  }
}
</style>