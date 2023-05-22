<?php

if($_POST){
    echo $_POST['name'];
    echo $_POST['timework'];
}
$conn = mysqli_connect('localhost','root','','test');
mysqli_set_charset($conn,"utf8");
$result=mysqli_query($conn, "INSERT INTO `test`.`latnt_work` (`Name`, `TimeWork`, `UserId`) VALUES ('".$_POST['name']."', '".$_POST['timework']."', ".$_POST['id']. ")");
header('Location: ' . $_SERVER['HTTP_REFERER']);

?>