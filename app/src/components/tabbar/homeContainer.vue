<template>
    <div class="app-homeContainer">
        <div>
            <!--顶部导航栏-->
            <mt-header fixed title="29cm">
                <mt-button icon="more" slot="right"></mt-button>
            </mt-header>
            <!--轮播图-->
            <mt-swipe  :auto="3000" >
                <mt-swipe-item v-for="item of swipeList" :key="item.id">
                    <img :src="item.img_url" />   
                </mt-swipe-item>
            </mt-swipe>

            <!--文章详情-->
            <div class="newsList">
                <div class="news" v-for="item of newsList" :key="item.id">
                    <!--图片-->
                    <img :src="'http://127.0.0.1:9090/'+item.img" class="newsImg">
                    <!--类别标题-->
                    <div class="newsFamily">
                        <span>—</span>
                        <span>{{item.fname}}</span>
                    </div>
                    <!--大标题-->
                    <div class="newsTitle"></div>
                    <!--简介-->
                    <div class="newsIntroduce">
                    </div>

                    <!--卡片商品-->
                    <div class="newsCommond">
                        <div class="commondCard" @click="handleJump(item.commond1.cid)">
                            <div class="cardLeft">
                                <img :src="'http://127.0.0.1:9090/'+item.commond1.bpic">
                                <ul>
                                    <li>{{item.commond1.title}}</li>
                                    <li>
                                        <p>{{item.commond1.details | lengthFilter}}</p>
                                    </li>
                                    <li>商品价格 ￥{{item.commond1.price}}</li>
                                </ul>
                            </div>
                            <div class="cardRight">
                                <img src="../../assets/like.png">
                                <p>{{item.commond1.love}}</p>
                            </div>
                        </div>
                        <div class="commondCard" @click="handleJump(item.commond2.cid)">
                            <div class="cardLeft">
                                <img :src="'http://127.0.0.1:9090/'+item.commond2.bpic">
                                <ul>
                                    <li>{{item.commond2.title}}</li>
                                    <li>
                                        <p>{{item.commond2.details | lengthFilter}}</p>
                                    </li>
                                    <li>商品价格 ￥{{item.commond2.price}}</li>
                                </ul>
                            </div>
                            <div class="cardRight">
                                <img src="../../assets/like.png">
                                <p>{{item.commond2.love}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </div>  
</template>
<script>
    import { Loadmore } from 'mint-ui' 
    export default {
        data(){
            return {
                swipeList:[
                    {id:1,img_url:"http://127.0.0.1:9090/img/swipe/swipe1.jpg"},
                    {id:2,img_url:"http://127.0.0.1:9090/img/swipe/swipe2.jpg"},
                    {id:3,img_url:"http://127.0.0.1:9090/img/swipe/swipe3.jpg"},
                    {id:4,img_url:"http://127.0.0.1:9090/img/swipe/swipe4.jpg"},
                    {id:5,img_url:"http://127.0.0.1:9090/img/swipe/swipe5.jpg"}  
                ],
                newsList:[],
                list:[],
                topStatus: '',
            }
        },
        mounted(){
            this.$http.get("http://127.0.0.1:9090/index/getNews").then((res)=>{
                //console.log(res.data.pros)
                this.newsList = res.data.news
                for(var i=0;i<this.newsList.length;i++){
                    this.newsList[i].commond1 = res.data.pros[2*i]
                    this.newsList[i].commond2 = res.data.pros[2*i+1]
                }
                console.log(this.newsList)
            })
        },
        methods:{
            handleJump(cid){
                this.$router.push("/details"+cid)
            }
        },
        created() {
            
        },
        
    }
</script>
<style>
  /*顶部导航栏*/
    .app-homeContainer .mint-header{
        background-color:rgba(166,166,166,0.5);
        color:#fff;
        font-size:24px;
        height:50px;
    }
  /*轮播*/
    .app-homeContainer .mint-swipe{
         width:100%;
         height:375px;
    } 
    .app-homeContainer .mint-swipe img{
         width:100%;
    }
    .app-homeContainer .mint-swipe .mint-swipe-indicators .mint-swipe-indicator{
        width:35px;
        border-radius:0;
        margin:-1px;
        opacity:1;
    }
  /*文章详情*/
    .app-homeContainer .newsList{
        margin-top:50px;
        float:right;
        margin-bottom:100px;
    }
    .app-homeContainer .news{
        margin-bottom:30px;
        width:300px;
        position:relative;
    }
    .app-homeContainer .newsList .newsImg{
        width:300px;
        height:300px;
    }
    .app-homeContainer .newsList .newsFamily{
        position:absolute;
        top:250px;
        left:-25px;
    }
    .app-homeContainer .newsList .newsFamily span:first-child{
        font-size:32px;
        font-weight:700;
    }
    .app-homeContainer .newsList .newsFamily span:nth-child(2){
        margin-left:5px;
        color:white;
        font-size:20px;
        font-weight:600;
        font-family:"黑体";
        letter-spacing:5px;
    }
    .app-homeContainer .newsList .newsTitle{
        font-size:28px;
        font-weight:600;
        letter-spacing:5px;
        padding-bottom:15px;
        margin-top:10px;
    }
    .app-homeContainer .newsList .newsIntroduce{
        font-size:16px;
        letter-spacing:3px;
    }
    /*卡片部分*/
    .app-homeContainer .newsList .newsCommond{
        padding:10px 15px 10px 0;
    }
    .app-homeContainer .newsList .newsCommond .commondCard{
        width:100%;
        border-top:1px solid gray;
        display:flex;
        margin-bottom:10px;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardLeft{
        padding:10px;
        display:flex;
        border-right:1px solid gray;
        width:75%;
        justify-content:space-between;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardLeft img{
        width:65px;
        height:65px;
        margin-top:5px;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardLeft ul{
        list-style:none;
        font-size:12px;
        color:gray;
        margin:0;
        padding:0;
        width:120px;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardLeft ul li:first-child{
        font-weight:700;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardLeft ul li:nth-child(2) p{
        font-size:12px;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardLeft ul li:last-child{
        color:orange;
        font-size:10px;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardRight{
        padding:20px;
        display:flex;
        flex-direction:column;
        justify-content:center;
    }
    .app-homeContainer .newsList .newsCommond .commondCard .cardRight img{
        width:20px;
        text-align:center;
    }
</style>