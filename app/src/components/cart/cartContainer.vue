<template>
    <div class="app-cartContainer">
        <!--头部-->
        <mt-header fixed title="购物车"></mt-header>
        <!--免邮条件-->
        <div class="freePost">
            <span>免邮</span>
            <span>已满足免邮条件</span>
        </div>
        <!--购物车列表-->
        <div class="cartList">
            <div class="cartItem" v-for="item of list" :key="item.id">
                <input type="checkbox" checked>
                <img :src="'http://127.0.0.1:9090/'+item.bpic" alt="">
                <div class="cartDetails">
                    <p>{{item.title | lengthFilter}}</p>
                    <p v-cloak v-text="'￥ '+item.price"></p>
                </div>
                <div class="cartBtn">
                    <button @click="handleSub(item.iid)">-</button>
                    <button>{{item.count}}</button>
                    <button @click="handleAdd(item.iid)">+</button>
                </div>
            </div>
        </div>
        <!--底部-->
        <div class="orderPart">
            <div>
                <input type="checkbox">
                <span>全选</span>
            </div>
            <div>
                <span>￥ {{sumPrice}}</span>
                <button>下单</button>
            </div>
            
        </div>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
    data(){
        return {
            list:[],
        }
    },
    mounted(){
        var uid = sessionStorage.getItem("uid")
        if(uid){
            this.$http.get("http://127.0.0.1:9090/cart/items?uid="+uid).then((res)=>{
                console.log(res)
                this.list = res.data
            })
        }else{
            this.$router.push("/login")
        }
    },
    methods:{
        handleAdd(iid){
            for(var item of this.list){
                if(item.iid==iid){
                    item.count++
                    var url = "http://127.0.0.1:9090/cart/update?iid="+item.iid+"&count="+item.count
                    this.$http.get(url).then((res)=>{
                        if(res.data.code==3){
                            //Toast("修改成功")
                        }else{
                            Toast("修改失败")
                        }
                    })
                    break;
                }
            }
        },
        handleSub(iid){
            for(var item of this.list){
                if(item.iid==iid){
                    if(item.count>=2){
                        item.count--
                        var url = "http://127.0.0.1:9090/cart/update?iid="+item.iid+"&count="+item.count
                        this.$http.get(url).then((res)=>{
                            if(res.data.code==3){
                                //Toast("修改成功")
                            }else{
                                Toast("修改失败")
                            }
                        })
                        break;
                    }else{
                        Toast("不能更少了")
                    }
                    
                }
            }
        }
    },
    computed:{
        sumPrice(){
            var sum = 0;
            for(var item of this.list){
                sum += item.count*item.price;
            }
            return sum.toFixed(2)
        },
    }
}
</script>
<style>
    .app-cartContainer{
        padding:50px 0;
        height:100vh;
    }
  /*头部*/
    .app-cartContainer .mint-header{
        background-color:white;
        color:black;
        height:50px;
        letter-spacing: 3px;
        font-size:18px;
        border-bottom:3px solid #efeff4;
    }
  /*免邮*/
    .app-cartContainer .freePost{
        height:50px;
        padding:15px 0;
        font-size:14px;
        border-bottom:3px solid #efeff4;
    }
    .app-cartContainer .freePost span:first-child{
        background-color:coral;
        color:white;
        margin:10px;
        padding:5px;
        font-size:12px;
    }
  /*购物车列表*/
    .app-cartContainer .cartList .cartItem{
        border-bottom:3px solid #efeff4;
        display:flex;
        flex-wrap:nowrap;
        justify-content:space-between;
        padding:10px;
    }
    .app-cartContainer .cartList .cartItem input{
        margin:30px 10px 0 0;
    }
    .app-cartContainer .cartList .cartItem img{
        width:25%;
        height:25%;;
        margin-right:10px;
    }
    .app-cartContainer .cartList .cartItem .cartDetails{
        width:30%;
    }
    .app-cartContainer .cartList .cartItem .cartDetails p:last-child{
        color:red;
    }
    .app-cartContainer .cartList .cartItem .cartBtn{
        width:30%;
        padding-top:50px;  
    }
    .app-cartContainer .cartList .cartItem .cartBtn button{
        width:30px;
        padding:5px 10px;

    }
    .app-cartContainer .cartList .cartItem .cartBtn button:nth-child(2){
        border:none;
    }
  /*底部结算*/
    .app-cartContainer .orderPart{
        position:fixed;
        bottom:50px;
        width:100%;
        height:50px;
        border-top:1px solid #ccc;
        display:flex;
        flex-wrap:nowrap;
        justify-content: space-between;
    }
    .app-cartContainer .orderPart div span{
        line-height:50px;
        margin-right:10px;
    }
    .app-cartContainer .orderPart div input{
        margin:0 10px;
    }
    .app-cartContainer .orderPart button{
        height:50px;
        background-color:black;
        color:white;
        width:120px;
        letter-spacing: 5px;
    }
</style>
