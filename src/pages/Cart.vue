<template>
  <div class="cart">
    <div class="cart-container">
      <van-empty v-show="goodsList.length == 0" description="购物车目前还没有商品" :image="cartEmptyImage">
        <router-link :to="{ name: 'category' }">
          <van-button round type="danger" class="bottom-button">去购物</van-button>
        </router-link>
      </van-empty>
      <!-- 购物车列表 -->
      <div v-for="item in goodsList" :key="item.id" class="list">
        <van-swipe-cell>
          <!-- 复选框 -->
          <div class="checkbox">
            <van-checkbox :name="item" v-model="item.cart.checked" @change="onCheck"
              checked-color="#f11a27"></van-checkbox>
          </div>
          <!-- 商品图片 -->
          <div class="image">
            <router-link :to="{ name: 'goodsDetail', params: { id: item.id } }">
              <van-image width="50" height="50" :src="item.picture" />
            </router-link>
          </div>
          <!-- 商品信息 -->
          <div class="goods-info">
            <div>{{ item.name }}</div>
            <div class="bottom">
              <div class="price"><span>￥</span>{{ item.price }}</div>
              <van-stepper v-model="item.cart.num" theme="round" button-size="22" disable-input />
            </div>
          </div>
          <!-- 左滑删除 -->
          <template #right>
            <van-button aquare icon="delete" type="danger" class="delete-button" @click="onDelete(item)" />
          </template>
        </van-swipe-cell>
      </div>
    </div>
    <!-- 结算 -->
    <van-submit-bar v-show="goodsList.length" :price="total * 100" button-text="去结算" button-type="primary"
      @submit="onSubmit" class="settlement">
      <van-button type="danger" @click="Delete()">删除</van-button>
      <van-checkbox v-model="allChecked" checked-color="#f11a27" @click="onCheckAll">全选</van-checkbox>
      <!-- 选择支付方式下拉菜单 -->
      <van-dropdown-menu active-color="#f11a27" :close-on-click-outside="false">
        <van-dropdown-item v-model="value1" :options="option1"  />
      </van-dropdown-menu>
     
    </van-submit-bar>
    <!-- <User /> -->
      
  </div>
</template>

<script setup>
import { ref, onMounted, computed } from "vue";
import { getCartList } from "../api";
import useCart from "../stores/cart";
import { showToast } from "vant";
import cartEmptyImage from "../assets/images/cart_empty.png";
import User from "./User.vue";

const { cart, removeCart } = useCart();

const goodsList = ref([]);
const allChecked = ref(false);

onMounted(async () => {
  await loadCart();
  onCheck();
});
// 支付方式下拉菜单,
const value1 = ref(0);
const option1 = [
  { text: "微信支付", value: 0 },
  { text: "支付宝", value: 1 },
  { text: "银行卡", value: 2 },
];

// 加载购物车数据
const loadCart = async () => {
  const ids = cart.map((item) => item.id);
  goodsList.value = await getCartList({ ids: ids.join(",") });
  goodsList.value.forEach((goods) => {
    goods.cart = cart.find((item) => goods.id == item.id);
  });
};

// 总金额
const total = computed(() => {
  let sum = 0;
  goodsList.value.forEach((item) => {
    if (item.cart.checked) {
      sum += item.price * item.cart.num;
    }
  });
  return sum;
});

// 去结算
const onSubmit = () => {
  //判断是否登录
  const isLoggedIn = localStorage.getItem('isLogin') === "true";
if (!isLoggedIn) {
  showToast("请先登录");
  return;
}
  //判断是否选择商品
  const ids = goodsList.value.filter((item) => item.cart.checked).map((item) => item.id);
  if (!ids.length) {
    showToast("请先选择商品");
    return;
  }
  //删掉已结算的商品
  for (let index = goodsList.value.length - 1; index >= 0; index--) {
    const item = goodsList.value[index];
    if (item.cart.checked) {
      goodsList.value.splice(index, 1);
      removeCart(item.id);
    }
  }
  showToast("结算成功");
};

// 全选
const onCheckAll = () => {
  goodsList.value.forEach((el) => {
    el.cart.checked = allChecked.value;
  });
};

// 商品都被选中时，全选按钮高亮
const onCheck = () => {
  allChecked.value = goodsList.value.every((el) => el.cart.checked);
};

// 删除商品
const onDelete = (item) => {
  const id = item.id;
  goodsList.value.forEach((item, index) => {
    if (item.id == id) {
      goodsList.value.splice(index, 1);
    }
  });
  removeCart(id);
};
const Delete = () => {
  for (let index = goodsList.value.length - 1; index >= 0; index--) {
    const item = goodsList.value[index];
    if (item.cart.checked) {
      goodsList.value.splice(index, 1);
      removeCart(item.id);
      showToast("删除成功");
    }
  }
};
</script>

<style lang="less" scoped>
.cart {
  margin: 0.3rem;
  padding: 0.05rem 0 3rem 0;

  .cart-container {
    margin-top: 1rem;

    .list {
      position: relative;
      height: 5rem;
      border-radius: 10px;
      box-shadow: 0px 0px 5px #ccc;
      margin-bottom: 1rem;

      .checkbox {
        position: absolute;
        top: 1.7rem;
        left: 0.2rem;
      }

      .image {
        position: absolute;
        top: 0.7rem;
        left: 2rem;
      }

      .goods-info {
        height: 5rem;
        display: flex;
        justify-content: space-around;
        flex-direction: column;
        padding: 0 1rem 0 6rem;

        .bottom {
          display: flex;
          justify-content: space-between;
          align-items: center;

          .price {
            color: #c82519;
            font-size: 0.45rem;
          }
        }
      }

      .delete-button {
        width: 2rem;
        height: 100%;
      }
    }

    .bottom-button {
      width: 7rem;
      height: 2rem;
    }
  }

  .settlement {
    margin-bottom: -0.1rem;
  }
}

:deep(.van-submit-bar) {
  bottom: 3.5rem;
}

:deep(.van-swipe-cell) {
  width: 100%;
}
</style>
