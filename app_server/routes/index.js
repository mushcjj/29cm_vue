const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/getNews",(req,res)=>{
  var sql1 = "SELECT * from cm_cloth_family"
  var sql2 = "(select * from cm_cloth where fid=1 limit 2) UNION (select * from cm_cloth where fid=2 limit 2) union (select * from cm_cloth where fid=3)"
  var outer ={news:{},pros:{}}
  Promise.all([
    new Promise(function(open){
      pool.query(sql1,(err,result)=>{
        if(err) console.log(err)
        outer.news = result
        open()
      })
    }),
    new Promise(function(open){
      pool.query(sql2,(err,result)=>{
        if(err) console.log(err)
        outer.pros = result
        open()
      })
    }).then((open)=>{
      //console.log(outer)
      res.send(outer)
    })
  ])
  

  


})
//接口地址: http://localhost:9090/index/getNews
module.exports=router;