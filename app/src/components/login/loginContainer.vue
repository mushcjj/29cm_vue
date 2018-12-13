<template>
    <div class="app-loginContainer">
        <!--头部X-->
        <mt-header fixed >
            <mt-button icon="field-error" slot="left" @click="handleClose
            "></mt-button>
        </mt-header>
        <h1>29CM</h1>
        <!--登录信息-->
        <div class="logMsg">
            <p>
                <input type="text" placeholder="请输入您的用户名" :class="{inpColor:display1}" @focus="handle1Show" @blur="handle1Hide" v-model="uname">
            </p>
            <p>
                <input type="text" placeholder="请输入您的密码" :class="{inpColor:display2}" @focus="handle2Show" @blur="handle2Hide" v-model="upwd">
            </p>
            <p>
                <button :class="{signinColor:isCurrent}" @click="signin">登录</button>
            </p>
            <p>
                <span>忘记密码</span>
            </p>
        </div>
        
        <!--尾部-->
        <div class="logBottom">
            新用户注册 | 微信登录
        </div>
        
    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
    data(){
        return {
            display1:false,
            display2:false,
            isCurrent:false,
            uname:"",unameCurrent:false,
            upwd:"",upwdCurrent:false,
        }
    },
    methods:{
        handle1Show(){
            this.display1 = true
        },
        handle2Show(){
            this.display2 = true
        },
        handle1Hide(){
            this.display1 = false
            //失焦验证uname
            var unameReg = /^\w{6,16}$/
            if(unameReg.test(this.uname)){
                this.unameCurrent = true
            }
            if(this.unameCurrent&&this.upwdCurrent){
                this.isCurrent = true
            }

        },
        handle2Hide(){
            this.display2 = false
            //失焦验证upwd
            var upwdReg = /^[0-9a-zA-Z]{3,18}$/
            if(upwdReg.test(this.upwd)){
                this.upwdCurrent = true
            }
            if(this.unameCurrent&&this.upwdCurrent){
                this.isCurrent = true
            }

        },
        signin(){
            console.log(this.uname,this.upwd)
            if(this.isCurrent){
                var url = "http://127.0.0.1:9090/users/signin"
                this.$http.post(
                    url,
                    {uname:this.uname,upwd:this.upwd},
                    {emulateJSON:true}  
                    //如果Web服务器无法处理编码为application/json的请求，可启用emulateJSON选项。启用该选项后，请求会application/x-www-form-urlencoded作为MIME type，就像普通的HTML表单一样。
                ).then((res)=>{
                    //console.log(res)
                    if(res.data.ok==1){
                        sessionStorage.setItem("uid",res.data.res.uid)
                        //判断是否有上一页
                        if(window.history.length<=1){
                            this.$router.push("/")
                        }else{
                            this.$router.go(-1)
                        }
                        
                    }else{
                        Toast(res.data.msg)
                    }
                })
            }
        },
        handleClose(){
            if(window.history.length<=1){
                this.$router.push("/")
            }else{
                this.$router.go(-1)
            }
        }
    }
}
</script>
<style>
    .app-loginContainer{
        height:100vh;
    }
  /*头部X*/
    .app-loginContainer .mint-header{
        background-color:black;
        color:white;
        height:50px;
    }
    .app-loginContainer .mint-header i{
        font-size:24px;
    }
    .app-loginContainer>h1{
        padding-top:100px;
        letter-spacing: 3px;
        text-align: center;
        margin:0;
    }
  /*登录信息*/
    .app-loginContainer .logMsg{
        width:90%;
        margin:100px auto;
    }
    .app-loginContainer .logMsg input{
        outline:none;
        border:none;
        border-bottom:1px solid #ccc;
    }
    .app-loginContainer .logMsg .inpColor{
        border-bottom:1px solid black;
    }
    .app-loginContainer .logMsg button{
        width:100%;
        background-color:#ccc;
        color:white;
        height:50px;
        font-size:18px;
        letter-spacing: 5px;
        margin-top:20px;
    }
    .app-loginContainer .logMsg .signinColor{
        background-color:black;
    }
    .app-loginContainer .logMsg span{
        position:absolute;
        right:20px;
    }
  /*尾部*/
    .app-loginContainer .logBottom{
        text-align: center;
    }
</style>
