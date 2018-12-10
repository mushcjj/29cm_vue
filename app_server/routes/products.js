const express=require("express")
const router=express.Router()
const pool=require("../pool")

//测试地址: http://localhost:9090/products?fid=1
router.get("/",(req,res)=>{
  var fid = req.query.fid
  var sql="select * from cm_cloth where fid=?";
  pool.query(sql,[fid],(err,result)=>{
    if(err) console.log(err);
    res.send(result)
    res.end()
  })
  //测试地址... products?kwords=i5&pno=1
})

module.exports=router;