import Vue from 'vue'
import Router from 'vue-router'

//自定义组件
import homeContainer from "./components/tabbar/homeContainer.vue";
import listContainer from "./components/list/listContainer.vue"
import detailsContainer from "./components/details/detailsContainer.vue"
import cartContainer from "./components/cart/cartContainer.vue"
import loginContainer from "./components/login/loginContainer"




Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',redirect: "/home"},
    {path: '/home',component: homeContainer,meta:{navShow:true}},
    {path:'/list',component: listContainer,meta:{navShow:true}},
    {path:'/details:cid',component:detailsContainer,meta:{navShow:false}},
    {path:'/cart',component:cartContainer,meta:{navShow:true}},
    {path:'/login',component:loginContainer,meta:{navShow:false}}
  ]
})
