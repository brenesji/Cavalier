<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['name'];
$b = $_POST['supplier'];
$c = $_POST['contact'];
$d = $_POST['memno'];
$e = $_POST['servicerequest'];
$f = $_POST['note'];
$g = $_POST['date'];
// query
$sql = "UPDATE citas 
        SET customer_name=?, barber=?, contact=?, membership_number=?, prod_name=?, note=?, expected_date=?
		WHERE customer_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$id));
header("location: citas.php");

?>