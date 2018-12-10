import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import BScroll from 'better-scroll'


import 'mint-ui/lib/style.css'
Vue.config.productionTip = false
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'


Vue.config.productionTip = false
axios.default.withCredentials=true

//完整引入mint-UI
import MintUI from "mint-ui"
Vue.use(MintUI)
//引入vueResource
import VueResource from 'vue-resource'
Vue.use(VueResource)

//创建过滤器
Vue.filter('lengthFilter',function(val){
  if(val.length>19){
    val = val.slice(0,20)
    val +="..."
  }
  return val
}) 


//配置vueResource 服务器的根目录
Vue.http.options.root = "http://127.0.0.1:9090/"

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
