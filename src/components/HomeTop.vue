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
    name: '零食大礼包',
    goods_brief: '内有不同口味零食，满足你的味蕾',
    list_pic_url: '/images/top1.jpg',
    tag: 'TOP1'
  },
  {
    retail_price: '28.00',
    origin_price: '58.00',
    name: '巧克力礼盒',
    goods_brief: '高品质巧克力，心意满满',
    list_pic_url: '/images/top2.jpg',
    tag: 'TOP2'
  },
  {
    retail_price: '10',
    origin_price: '13',
    name: '素牛肉干',
    goods_brief: '无添加剂，健康美味',
    list_pic_url: '/images/top3.jpg',
    tag: 'TOP3'
  },
  {
    retail_price: '15.00',
    origin_price: '20.00',
    name: '每日坚果&&3袋',
    goods_brief: '每日补充营养，健康生活',
    list_pic_url: '/images/top4.jpg',
    tag: 'TOP4'
  },
  {
    retail_price: '5.00',
    origin_price: '6.00',
    name: '麻辣',
    goods_brief: '麻辣鲜香，让你回味无穷',
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