<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
$b = $_POST['supplier'];
$c = $_POST['contact'];
$d = $_POST['memno'];
$e = $_POST['servicerequest'];
$f = $_POST['note'];
$g = $_POST['date'];
// query
$sql = "INSERT INTO citas (customer_name,barber,contact,membership_number,prod_name,note,expected_date) VALUES (:a,:b,:c,:d,:e,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g));
header("location: citas.php");


?>