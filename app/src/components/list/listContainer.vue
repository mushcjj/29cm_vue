<template>
    <div class="app-listContainer">
        <!--顶部搜索框-->
        <div class="searchBox">
            <img src="../../assets/searchHeader.png" height="20" width="20" >
            <input type="text">
        </div>
        <!--顶部导航栏-->
        <ul>
            <li @click="getList(1)">Women</li>
            <li @click="getList(2)">Men</li>
            <li @click="getList(3)">Home</li>
            <li>Others</li>
        </ul>
        <!--轮播：特别推荐-->
        <div class="speCommond">
            <mt-swipe :show-indicators="false" @change="handleChange">
                <mt-swipe-item v-for="item of swipeList" :key="item.id">
                    <div class="myCard">
                        <div class="swipeImg">
                            <img :src="'http://127.0.0.1:9090/'+item.bpic" >
                        </div>
                        <p>{{item.title}}</p>
                    </div>
                </mt-swipe-item>  
            </mt-swipe>
            <mt-progress :value="myProgress" :barHeight="5"></mt-progress>
        </div>
        <!--商品列表-->
        <div class="proList">
            <div class="itemCard" v-for="item of list" :key="item.id" @click="jumpToDetails(item.cid)">
                <img :src="'http://127.0.0.1:9090/'+item.bpic" alt="">
                <div class="itemIntro">
                    <p class="itemTitle">{{item.title}}</p>
                    <p class="itemDetail">{{item.details}}</p>
                    <p class="itemPrice">￥ {{item.price}}</p>
                </div>
            </div>
        </div>
    </div>
    
</template>
<script>
export default {
    data(){
        return {
            swipeList:[],
            myProgress:25,
            list:[]
        }
    },
    methods:{
        handleChange(index){
            //console.log(index)
            this.myProgress = (index+1)*25
        },
        getList(fid){
            var url = "http://127.0.0.1:9090/products?fid="+fid
            this.$http.get(url).then((res)=>{
                //console.log(res)
                this.swipeList = res.data.slice(0,4)
                this.list = res.data
            })
        },
        jumpToDetails(cid){
           // console.log(cid)
            this.$router.push("/details"+cid)
        }
    },
    mounted(){
        
    },
    created(){
        this.getList(1)
    }

}
</script>
<style>
    .app-listContainer{
        margin-bottom:80px;
    }
  /*搜索框*/
    .app-listContainer .searchBox{
        margin:10px;
        display:flex;
        flex-wrap: nowrap;
        background-color:rgba(255,255,255,.1);
        border-radius: 30px;
        border:1px solid black;
    }
    .app-listContainer .searchBox img{
        margin:15px;
    }
    .app-listContainer .searchBox input{
        width:75%;
        height:48px;
        padding:0;
        margin:0;
        border:none;
        outline:none;
    }
  /*导航列表*/
    .app-listContainer ul li{
        font-size:32px;
        font-weight:700;
        padding:15px 0;
    }
  /*特别推荐 轮播*/
    .app-listContainer .speCommond{
        width:80%;
        height:300px;
        margin:0 auto;
        margin-bottom:30px;
    }
    .app-listContainer .speCommond .mint-swipe{
        width:100%;
        height:280px;
    }
    .app-listContainer .speCommond .myCard .swipeImg{
        width:100%;
        height:200px;
        overflow: hidden;
    }
    .app-listContainer .speCommond .myCard img{
        width:100%;
    }
    .app-listContainer .speCommond .myCard p{
        margin-top:20px;
        font-size:18px;
        font-weight:700;
        color:#000;
    }
    .app-listContainer .speCommond .mt-progress-content .mt-progress-progress{
        background-color:#000
    }
  /*商品列表*/
    .app-listContainer .proList {
        width:100%;
        margin-bottom:50px;
    }

    .app-listContainer .proList .itemCard{
        width:80%;
        float:right;
    }
    .app-listContainer .proList::after{
        content:"";
        display:block;
        clear:right;
    }
    .app-listContainer .proList .itemCard img{
        width:100%;
    }
    .app-listContainer .proList .itemCard .itemIntro .itemTitle{
        font-size:18px;
        color:#000;
        font-weight: 600;
    }
    .app-listContainer .proList .itemCard .itemIntro .itemPrice{
        color:red;
    }
</style>
