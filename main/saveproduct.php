<?php
session_start();
include('../connect.php');
$a = $_POST['code'];
$c = $_POST['exdate'];
$d = $_POST['price'];
$e = $_POST['supplier'];
$f = $_POST['qty'];
$g = $_POST['o_price'];
$h = $_POST['profit'];
$j = $_POST['date_arrival'];
$k = $_POST['qty_sold'];
// query
$sql = "INSERT INTO products (product_code,expiry_date,price,supplier,qty,o_price,profit,date_arrival,qty_sold) VALUES (:a,:c,:d,:e,:f,:g,:h,:j,:k)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$h,':j'=>$j,':k'=>$k));
header("location: products.php");


?>