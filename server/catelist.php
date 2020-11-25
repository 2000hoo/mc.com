<?php

  // 1. 拿到前端传递来的数据
  $navId = $_GET['navId'];

  // 1. 连接数据库, 找到所有分类, 返回给前端
  $link = mysqli_connect('127.0.0.1', 'root', 'root', 'mc');

  $sql = "SELECT `bid`,`name` FROM `mc_nav` WHERE bid = $navId";
  $res = mysqli_query($link, $sql);
  $data = mysqli_fetch_all($res, MYSQLI_ASSOC);
  
  $sql2 = "SELECT * FROM `mc_goods` WHERE bid = $navId";
  $res2 = mysqli_query($link, $sql2);
  $data2 = mysqli_fetch_all($res2, MYSQLI_ASSOC);

  $sql3 = "SELECT * FROM `mc_nav` WHERE bid = $navId OR id = $navId";
  $res3 = mysqli_query($link, $sql3);
  $data3 = mysqli_fetch_all($res3, MYSQLI_ASSOC);

  // 返回结果给前端
  $arr = array(
    "message" => "获取分类列表成功",
    "code" => 1,
    "list" => $data,
    "list2" => $data2,
    "info" => $data3[0]

  );

  echo json_encode($arr);

?>
