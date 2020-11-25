<?php

  // 1. 连接数据库, 找到所有分类, 返回给前端
  $link = mysqli_connect('127.0.0.1', 'root', 'root', 'mc');

  $sql = "SELECT * FROM `mc_nav` LIMIT 9";
  $res = mysqli_query($link, $sql);
  $data = mysqli_fetch_all($res, MYSQLI_ASSOC);

  $sql2 = "SELECT * FROM `mc_nav` WHERE bid != 0";
  $res2 = mysqli_query($link, $sql2);
  $data2 = mysqli_fetch_all($res2, MYSQLI_ASSOC);
  
  $sql3 = "SELECT * FROM `mc_goods` WHERE bid = 9 ORDER BY RAND() LIMIT 4";
  $res3 = mysqli_query($link, $sql3);
  $data3 = mysqli_fetch_all($res3, MYSQLI_ASSOC);

  $sql4 = "SELECT * FROM `mc_goods` WHERE ishot = 1 ORDER BY RAND() LIMIT 7";
  $res4 = mysqli_query($link, $sql4);
  $data4 = mysqli_fetch_all($res4, MYSQLI_ASSOC);

  $sql5 = "SELECT * FROM `mc_goods` ORDER BY RAND()";
  $res5 = mysqli_query($link, $sql5);
  $data5 = mysqli_fetch_all($res5, MYSQLI_ASSOC);


  // 返回结果给前端
  $arr = array(
    "message" => "获取分类列表成功",
    "code" => 1,
    "list" => $data,
    "list2" => $data2,
    "list3" => $data3,
    "list4" => $data4,
    "list5" => $data5
  );

  echo json_encode($arr);

?>
