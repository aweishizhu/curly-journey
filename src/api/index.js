import request from '../utils/request'
// 分类接口
export function getCategoryList() {
  return request.get('/home/category/list')
}

// 商品列表接口
export function getGoodsList(params) {
  return request.get('/home/goods/list', { params })
}

// 商品相册接口
export function getGoodsAlbum(params) {
  return request.get('/home/goods/album', { params })
}

// 商品详情接口
export function getGoodsDetail(params) {
  return request.get('/home/goods', { params })
}

// 登录接口
export function login(data) {
  return request.post('/home/login', data)
}

// 用户信息接口
export function getUser() {
  return request.get('/home/user')
}
