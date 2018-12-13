<template>
  <div class="app-container"> 
    
    <!--容器-->
    <router-view></router-view>

    <!--底部导行栏-->
    <nav class="mui-bar mui-bar-tab my-nav-footer" v-show="$route.meta.navShow">
        <router-link to="/home" class="mui-tab-item" href="#" >
          <img src="./assets/home.png" class="nav-img">
          <span class="mui-tab-label">HOME</span>  
        </router-link>
        <router-link to="/list" class="mui-tab-item" href="#" >
          <img src="./assets/search.png" class="nav-img">
          <span class="mui-tab-label">SHOP</span>  
        </router-link>
        <router-link to="/cart" class="mui-tab-item" href="#" >
          <img src="./assets/welove.png" class="nav-img">
          <span class="mui-tab-label">CARTS</span>  
        </router-link>
        <router-link to="/login" class="mui-tab-item" href="#" >
          <img src="./assets/my.png" class="nav-img">
          <span class="mui-tab-label">MY</span>  
        </router-link>
    </nav>
  </div> 
</template>
<script>
  
  export default {
  
  }
</script>
<style>
  .app-container{
     overflow-x:hidden;
     background-color:white;
   }
  
  
  /*底部导航栏*/
  .mui-tab-item span{
    display:block;
    font-size:12px;
    color:black;
  }
  .nav-img{
    display:block;
    width:28px;
    padding:0;
    margin:3px auto 1px;
  }
</style>
