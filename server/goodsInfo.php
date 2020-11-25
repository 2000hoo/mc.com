<?php

  // 1. 拿到前端传递来的数据
  $goodsId = $_GET['goodsId'];

  // 2. 去数据库找数据
  $link = mysqli_connect('localhost', 'root', 'root', 'mc');
  $sql = "SELECT * FROM `mc_goods` WHERE `goods_id` = $goodsId";
  $res = mysqli_query($link, $sql);
  $data = mysqli_fetch_all($res, MYSQLI_ASSOC);

  $sql2 = "SELECT `mc_nav`.`bid`,`mc_nav`.`cid`,`mc_nav`.`name`,`mc_goods`.`goods_id`,`mc_goods`.`goods_title` FROM `mc_nav`,`mc_goods` 
  WHERE `mc_nav`.`bid`=`mc_goods`.`bid` AND `mc_nav`.`cid`=`mc_goods`.`cid` AND `goods_id` = $goodsId";
  $res2 = mysqli_query($link, $sql2);
  $data2 = mysqli_fetch_all($res2, MYSQLI_ASSOC);

  $sql3 = "SELECT `mc_nav`.`id`,`mc_nav`.`name`,`mc_goods`.`goods_id`,`mc_goods`.`goods_title` FROM `mc_nav`,`mc_goods` 
  WHERE `mc_nav`.`id`=`mc_goods`.`bid` AND `goods_id` = $goodsId";
  $res3 = mysqli_query($link, $sql3);
  $data3 = mysqli_fetch_all($res3, MYSQLI_ASSOC);

  // 3. 返回结果给前端
  $arr = array(
    "message" => "获取商品信息成功",
    "code" => 1,
    "info" => $data[0],
    "info2" => $data2[0],
    "info3" => $data3[0]
  );
  echo json_encode($arr);

?>
