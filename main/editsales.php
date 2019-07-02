<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM sales_order WHERE invoice= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditsale.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Editar Factura</h4></center><hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />






<span>Nombre Barbero: </span><input type="text" style="width:265px; height:30px;" name="barbero" value="<?php echo $row['supplier']; ?>" /><br>



<span>Cantidad: </span><input type="text" style="width:265px; height:30px;" name="cantidad" value="<?php echo $row['qty']; ?>" /><br>
<span>Medio de Pago: </span><input type="text" style="width:265px; height:30px;" name="tipopago" value="<?php echo $row['type']; ?>" /><br>
<span>Monto: </span><input type="text" style="width:265px; height:30px;" name="monto" value="<?php echo $row['amount']; ?>" /><br>
<span>Pago Barbero: </span><input type="text" style="width:265px; height:30px;" name="pagobarbero" value="<?php echo $row['BarberCard']; ?>" /><br>
<span>Pago Barberia: </span><input type="text" style="width:265px; height:30px;" name="pagobarberia" value="<?php echo $row['AmountBarber']; ?>" /><br>
<span>Impuesto: </span><input type="text" style="width:265px; height:30px;" name="imp" value="<?php echo $row['tax']; ?>" /><br><!--Agrego el impuesto--->

<div style="float:right; margin-right:10px;">

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Guardar Cambios</button>
</div>
</div>
</form>
<?php
}
/*<span>Pago Barberia: </span><textarea style="width:265px; height:80px;" name="note"><?php echo $row['AmountBarber']; ?></textarea><br>*/

/*Los valores que paso a saveeditsale son los nombres de los input text*/
?>

<!-----con esto escondo el texto type="hidden" --------->