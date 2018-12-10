const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/",(req,res)=>{
  var cid = req.query.cid;
  //console.log(pid);
  var sql = "SELECT * FROM cm_cloth where cid=?";
  pool.query(sql,cid,(err,result)=>{
    if(err) console.log(err)
    //console.log(result)
    res.send(result)
  })

  
})

module.exports=router;