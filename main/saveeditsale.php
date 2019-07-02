<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['barbero'];
$b = $_POST['cantidad'];
$c = $_POST['tipopago'];
$d = $_POST['monto'];
$e = $_POST['pagobarbero'];
$f = $_POST['pagobarberia'];
$g = $_POST['imp']; //campo impuesto
// query
$sql = "UPDATE sales_order 
        SET supplier=?, qty=?, type=?,amount=?, BarberCard=?, AmountBarber=?, tax=?
		WHERE invoice=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$id));
header("location: salesreport.php?d1=0&d2=0");

?>


