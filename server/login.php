<?php

  // 后端的业务逻辑
  // 1. 接收参数, 判断任何一个没有, 都不是正常行为
 

  if (!isset($_POST['username']) || !isset($_POST['password'])) {

    $arr = array("message" => "请按照规则携带参数", "code" => 0);

    echo json_encode($arr);

    // 打断代码, 后面的所有代码不再执行了
    exit;
  }

  $username = $_POST['username'];
  $password = $_POST['password'];
  

  // 2. 去数据库比对
  $link = mysqli_connect('localhost', 'root', 'root', 'mc');

  $sql = "SELECT * FROM `users` WHERE `username`='$username' AND `password`='$password'";
  $res = mysqli_query($link, $sql);

  $data = mysqli_fetch_all($res, MYSQLI_ASSOC);
 
  // 3. 判断结果
  if (count($data)) {

    setcookie('user',$data[0]['username'],time()+9999,'/');

    $arr = array(
      "message" => "登录成功",
      "code" => 1,
      "data" => $data
    );
  } else {
    $arr = array(
      "message" => "登录失败",
      "code" => 2
    );
  }

  // 返回结果
  echo json_encode($arr);

?>
