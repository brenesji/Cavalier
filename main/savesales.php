<?php
session_start();
date_default_timezone_set("America/Costa_Rica");
include('../connect.php');
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$e = $_POST['amount'];    /*Este es el monto de la factura*/
$z = $_POST['profit'];
$barber = $_POST['supplier'];
$producto = $_POST['producto'];/*recibo como parametro el valor q genere en chekout*/
$cname = $_POST['cname'];
/*if($d=='credit') {
$f = $_POST['due'];
$sql = "INSERT INTO sales_order (invoice,cashier,date,type,amount,profit,supplier,due_date,cust_name) VALUES (:a,:b,:c,:d,:e,:z,:j,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':z'=>$z,':j'=>$j,':f'=>$f,':g'=>$cname));
header("location: preview.php?invoice=$a");
exit();
}*/    
//if($d=='cash') {
	
	
	//:rojo'=>$rebajo
	
/*$f = $_POST['cash'];
$sql = "INSERT INTO sales_order (invoice,cashier,date,type,amount,profit,supplier,due_date,product_code,cust_name) VALUES (:a,:b,:c,:d,:e,:z,:j,:f,:p,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':z'=>$z,':j'=>$barber,':f'=>$f,':p'=>$producto,':g'=>$cname));
header("location: preview.php?invoice=$a");
exit();*/



//$rebajo=$e-($e*0.045);  ----> Rebajo del 4.5 tarjeta // ahora cambio al 7% 
//$sinrebajo=$e;
$rebajotarjeta=$e-($e/2)-($e*0.040); /*Al barbero le toca la mita de la venta menos el 70 por ciento*/
$rebajolocal=$e-($e/2);
$localtarjeta=$e-$rebajotarjeta; /*el rebajo con tarjeta al local seria el monto de la factura menos rebajo de la tarjeta*/
//$cobrotax=($e*0.013)+$e;//aqui estoy cobrando el impuesto --- este es el total con impuesto 
$cobrotax=($e*0.13);//aqui estoy cobrando el impuesto
//  Este es el que sirve perfecto 
if($d=='Efectivo') {
$f = $_POST['cash'];
$sql = "INSERT INTO sales_order (invoice,cashier,date,type,amount,profit,supplier,due_date,cust_name,BarberCard,AmountBarber,tax) VALUES (:a,:b,:c,:d,:e,:z,:j,:f,:g,:verde,:black,:impuesto)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':z'=>$z,':j'=>$barber,':f'=>$f,':g'=>$cname,':verde'=>$rebajolocal,':black'=>$rebajolocal,':impuesto'=>$cobrotax));
header("location: preview.php?invoice=$a");
exit();
}
if($d=='Tarjeta') {
$f = $_POST['cash'];
$sql = "INSERT INTO sales_order (invoice,cashier,date,type,amount,profit,supplier,due_date,cust_name,BarberCard,AmountBarber,tax) VALUES (:a,:b,:c,:d,:e,:z,:j,:f,:g,:rojo,:white,:impuesto)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':z'=>$z,':j'=>$barber,':f'=>$f,':g'=>$cname,':rojo'=>$rebajotarjeta,':white'=>$localtarjeta,':impuesto'=>$cobrotax));
header("location: preview.php?invoice=$a");
exit();
}
/*
verde -> Rebajo que le toca al barbero cuando la venta es en efectivo
black -> Rebajo que le toca al local cuando la venta es en efectivo
rojo -> Rebajo que le toca al barbero cuando la venta es en tarjeta
white -> Rebajo que le toca al local cuando la venta es en tarjeta


*/




//}
// query



?>