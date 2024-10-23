<template>
  <div class="home-top">
    <h3>人气推荐</h3>
    <div class="content">
      <van-card v-for="item in goodsList" :key="item.id" :tag="item.tag" :price="item.retail_price"
        :origin-price="item.origin_price" :desc="item.goods_brief" :title="item.name" :thumb="item.list_pic_url">
      </van-card>
    </div>

  </div>
</template>
<script setup>
const goodsList = [
  {
    retail_price: '99.00',
    name: '华为快充充电器',
    goods_brief: '支持快充，充电更快速',
    list_pic_url: '/images/top1.jpg',
    tag: 'TOP1'
  },
  {
    retail_price: '48.00',
    origin_price: '68.00',
    name: '华为手机保护膜',
    goods_brief: '适用华为mate60rs/60/50/40/30/pro/P70pro/p60/50/40/30/pro/uv微晶固化膜nova12pro ...',
    list_pic_url: '/images/top2.jpg',
    tag: 'TOP2'
  },
  {
    retail_price: '30',
    origin_price: '40',
    name: 'vivo iqoo 120w原装数据线',
    goods_brief: '支持120w快充，充电更快速',
    list_pic_url: '/images/top3.jpg',
    tag: 'TOP3'
  },
  {
    retail_price: '60.00',
    origin_price: '80.00',
    name: '红米无线充电',
    goods_brief: '支持无线充电，充电更快速',
    list_pic_url: '/images/top4.jpg',
    tag: 'TOP4'
  },
  {
    retail_price: '59.00',
    origin_price: '69.00',
    name: '小米 Redmi充电宝',
    goods_brief: '支持快充，充电更快速',
    list_pic_url: '/images/top5.jpg',
    tag: 'TOP5'
  }
]
</script>
<style lang="less" scoped>
.home-top {
  h3 {
    font-size: 22px;
    line-height: 30px;
    text-align: center;
    margin: 0.5rem 0;
  }

  .content {
    --van-tag-primary-color: #FF8000;
    --van-card-font-size: 16px;
    --van-card-background: #f9f9f9;
    background: var(--van-card-background);

    :deep(.van-card) {
      margin-top: 0;

      .van-card__title {
        padding: 10px 0 5px;
      }

      .van-card__price-currency {
        font-size: var(--van-card-font-size);
      }
    }

    &::after {
      content: '';
      display: block;
      height: 3rem;
    }
  }
}
</style>