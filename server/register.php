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
  $sql = "INSERT INTO `users` (`id`,`username`,`password`) VALUES(null,'$username','$password')";

  $res = mysqli_query($link, $sql);
 
 
  // 3. 判断结果
  if (!empty($res)) {
    $arr = array(
      "message" => "注册成功",
      "code" => 1
    );
  } else {
    $arr = array(
      "message" => "注册失败",
      "code" => 2
    );
  }

  // 返回结果
  echo json_encode($arr);

?>
