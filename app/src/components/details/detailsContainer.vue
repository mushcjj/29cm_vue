<template>
    <div class="app-detailsContainer">
        <!--返回list页面-->
        <mt-header fixed>
            <router-link to="/list" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
        </mt-header>
        <!--详情信息-->
        <div class="detailsPart">
            <div class="detailsCard">
                <img :src="'http://127.0.0.1:9090/'+details.bpic" >
                <div class="detailsTitle">
                    <span>{{details.title}}</span>
                    <img src="../../assets/like.png" alt="">
                </div>
                <div class="detailsDet">{{details.details}}</div>
                <div class="detailsPrice">￥  {{details.price}}</div>
            </div>
            <div class="serviceCard">
                <div>
                    <span>
                        <img src="../../assets/check-circle.png" alt="">
                        世界设计
                    </span>
                </div>
                <div>
                    <span>
                        <img src="../../assets/check-circle.png" alt="">
                        中国制造
                    </span>
                </div>
                <div>
                    <span>
                        <img src="../../assets/check-circle.png" alt="">
                        免费运送
                    </span>
                </div>
                <div>
                    <span>
                        <img src="../../assets/check-circle.png" alt="">
                        7日退换
                    </span>
                </div>
            </div>
            <div class="detailsIntro">
                <p>商品详情</p>
                <div>{{details.details}}</div>
                <img :src="'http://127.0.0.1:9090/'+details.lpic">
            </div>
        </div>
        <!--底部导航栏-->
        <div class="footerBar">
            <div><img src="../../assets/consult.png" alt=""></div>
            <div><img src="../../assets/cart.png" alt=""></div>
            <button>立即购买</button>
            <button @click="handleShowPop">加入购物车</button>
        </div>
        <!--添加购物车 弹出-->
        <mt-popup v-model="popupVisible" position="bottom">
            <div class="popCard">
                <div class="popContent">
                    <img :src="'http://127.0.0.1:9090/'+details.bpic">
                    <div>
                        <p>{{details.title}}</p>
                        <p>￥ {{details.price}}</p>
                    </div>
                    
                </div>
                <span @click="handleClose">X</span>
            </div>
            <div class="popCalc">
                <button @click="handleSub">-</button>
                <input v-model="count">
                <button @click="handleAdd">+</button>
            </div>
            <button @click="handleComfirm">确认添加</button>
        </mt-popup>
    </div>
</template>
<script>
export default {
    data(){
        return {
            cid:this.$route.params.cid,
            details:{},
            popupVisible:false,
            count:1,
        }
    },
    methods:{
        getDetails(){
            var url = "http://127.0.0.1:9090/details?cid="+this.cid
            this.$http.get(url).then((res)=>{
                this.details = res.data[0]
            })
        },
        handleShowPop(){
            this.popupVisible = true;
        },
        handleClose(){
            this.popupVisible = false;
        },
        handleAdd(){
            this.count++
        },
        handleSub(){
            if(this.count>1){
                this.count--
            }
        },
        handleComfirm(){
            if(sessionStorage.getItem("uid")){
                this.$router.push("/cart")
            }else{
                this.$router.push("/login")
            } 
        }
        
    },
    created(){
        this.getDetails()
    }
}
</script>
<style> 
  /*顶部返回栏*/
    .app-detailsContainer .mint-header{
        height:50px;
        background-color:rgba(0,0,0,0);
    }
    .app-detailsContainer .mint-header .mint-button-icon{
        color:black;
    }
  
  /*详情信息*/
    .app-detailsContainer .detailsPart{
        margin-bottom:100px;
    } 
  /*detailsCard*/
    .app-detailsContainer .detailsCard{
        border-bottom:1px solid #ccc;
    
    }
    .app-detailsContainer .detailsPart .detailsCard img{
        width:100%;
    }
    .app-detailsContainer .detailsPart .detailsTitle{
        display:flex;
        justify-content: space-between;
        margin-top:30px;
        padding:10px;
    }
    .app-detailsContainer .detailsPart .detailsTitle span{
        font-size:18px;
        margin-right:40px;
    }
    .app-detailsContainer .detailsPart .detailsTitle img{
        width:32px;
        height:32px;
    }
    .app-detailsContainer .detailsPart .detailsDet{
        padding:10px;
        font-size:14px;
        line-height: 25px;
        color:black;
    }
    .app-detailsContainer .detailsPart .detailsPrice{
        padding:10px;
        font-size:16px;
        color:red;
    }
  
  /*serviceCard*/
    .app-detailsContainer .detailsPart .serviceCard{
        width:100%;
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-around;
        font-size:14px;
        margin-top:20px;
        padding-bottom:20px;
        text-align: center;
        line-height:14px;
        border-bottom:1px solid #ccc;
    }
    .app-detailsContainer .detailsPart .serviceCard span img{
        vertical-align: middle;
    }
  /*detailsIntro*/
    .app-detailsContainer .detailsPart .detailsIntro{
        width:100%;
        overflow: hidden;
        padding:10px;
    }
    .app-detailsContainer .detailsPart .detailsIntro p{
        font-size:20px;
        color:black;
        font-weight:500;
        padding-top:20px;
        padding-bottom:20px;
        border-bottom:1px solid #ccc;
    }
    .app-detailsContainer .detailsPart .detailsIntro div{
        font-size:14px;
        color:#666;
        padding-bottom:20px;
    }
    .app-detailsContainer .detailsPart .detailsIntro img{
        width:100%;
    }
  /*底部操作栏*/
    .app-detailsContainer .footerBar{
        width:100%;
        height:50px;
        position:fixed;
        bottom:0;
        background-color:#fff;
        border:1px solid #ccc;
        display:flex;
        flex-wrap: nowrap;
        justify-content: space-between;
    }
    .app-detailsContainer .footerBar div{
        width:15%;
        text-align: center;
    }
    .app-detailsContainer .footerBar div img{
        margin-top:12px;
    }
    .app-detailsContainer .footerBar button{
        outline: none;
        border:none;
    }
    .app-detailsContainer .footerBar button:last-child{
        background-color:black;
        color:#fff;
        padding:10px 20px;
    }
    .app-detailsContainer .footerBar div img{
        text-align: center;
    }
  /*popup部分*/
    .app-detailsContainer .mint-popup{
        width:100%;
        height:250px;
    }
    .app-detailsContainer .mint-popup .popCard{
        width:100%;
        display:flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        padding:10px 10px 20px;
        border-bottom:1px solid #ccc;
    }
    .app-detailsContainer .mint-popup .popCard .popContent{
        display:flex;
        justify-content: space-between; 
    }
    .app-detailsContainer .mint-popup .popCard .popContent div{
        width:80%;
        margin-left:20px;
    } 
    .app-detailsContainer .mint-popup .popCard img{
        width:80px;
        height:80px;
        border-radius: 5px; 
    }
    .app-detailsContainer .mint-popup .popCalc{
        display:flex;
        padding-top:20px;
        justify-content: flex-end;
        padding:10px;
    }
    .app-detailsContainer .mint-popup .popCalc input{
        width:20px;
        border:none;
        outline:none;
        margin-left:10px;
    }
    .app-detailsContainer .mint-popup>button{
        display:block;
        width:100%;
        background-color:black;
        color:#fff;
        position:fixed;
        bottom:0;
        height:40px;
    }
    
</style>
