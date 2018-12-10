const express=require("express")
const router=express.Router()
const pool=require("../pool")

//添加购物车
router.get("/add",(req,res)=>{
    var proid=req.query.pid;
    var count=req.query.count;
    var uid=req.query.uid;
    pool.query(
        "select * from tcc_shoppingcart_item where uid=? and proid=?",
        [uid,proid],
        (err,result)=>{
            if(err) console.log(err);
            if(result.length==0){
                pool.query(
                    "insert into tcc_shoppingcart_item values(null,?,?,?,0)",
                    [uid,proid,count],
                    (err,result)=>{
                        if(err) console.log(err);
                        res.send({code:1,msg:"添加成功"})
                        res.end()
                    }
                )
            }else{
                pool.query(
                    "update tcc_shoppingcart_item set count=count+? where uid=? and proid=?",
                    [count,uid,proid],
                    (err,result)=>{
                        if(err) console.log(err);
                        res.send({code:2,msg:"添加购物车成功"})
                        res.end()
                    }
                )
            }
        }
    ) 
})

//查找我的购物车
router.get("/items",(req,res)=>{
    var uid=req.query.uid;
    var sql=`SELECT iid,uid,pid,count,title,pic,color from tcc_shoppingcart_item left join tcc_products on proid=pid where uid=?`
    pool.query(sql,[uid],(err,result)=>{
        if(err) console.log(err)
        //console.log(result)
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        });
        res.write(JSON.stringify(result));
        res.end();
    })
})

//修改购物车
router.get("/update",(req,res)=>{
    var iid=req.query.iid;
    var count=req.query.count;
    if(count>0){
        var sql="update tcc_shoppingcart_item set count=? where iid=?";
        var data=[count,iid];
    }else{
        var sql="delete from tcc_shoppingcart_item where iid=?";
        var data=[iid];
    }
    pool.query(sql,data,(err,result)=>{
        if(err) console.log(err);
        res.send({code:3,msg:"修改成功"})
        res.end();
    })
    
})

module.exports=router;