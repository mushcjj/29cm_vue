const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.post("/signin",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  //console.log(uname,upwd);
  pool.query(
    "select * from cm_user where uname=? and upwd=?",
    [uname,upwd],
    (err,result)=>{
      if(err) console.log(err);
      if(result.length>0){
        res.writeHead(200);
        var user=result[0]
        res.write(JSON.stringify({
          ok:1,
          res:user
        }))
      }else{
        res.write(JSON.stringify({
          ok:0,
          msg:"您的用户名或密码有误！"
        }))
      }
      res.end();
    }
  )
})


//测试：
//http://localhost:3000/users/islogin ok:0
//.../users/signin?uname=dingding&upwd=123456 ok:1
//.../users/islogin ok:1
//.../users/signout
//.../users/islogin ok:0

module.exports=router;