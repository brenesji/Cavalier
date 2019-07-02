<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM citas WHERE customer_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditcita.php" method="post">
<center><h4><i class="icon-edit icon-large"></i> Editar Citas</h4></center>
<hr>
<div id="ac">
<input type="hidden" name="memi" value="<?php echo $id; ?>" />
<span>Nombre Cliente: </span><input type="text" style="width:265px; height:30px;" name="name" value="<?php echo $row['customer_name']; ?>" /><br>
<span>Barbero: </span><input type="text" style="width:265px; height:30px;" name="supplier" value="<?php echo $row['barber']; ?>" /><br>
<span>Telf: </span><input type="text" style="width:265px; height:30px;" name="contact" value="<?php echo $row['contact']; ?>" /><br>
<span>Servicio Solicitado: </span><textarea style="width:265px; height:60px;" name="servicerequest"><?php echo $row['prod_name']; ?></textarea><br>
<span>Monto: </span><input type="text" style="width:265px; height:30px;" name="memno" value="<?php echo $row['membership_number']; ?>" /><br>
<span>Hora: </span><textarea style="height:60px; width:265px;" name="note"><?php echo $row['note'];?></textarea><br>
<span>Fecha: </span><input type="date" style="width:265px; height:30px;" name="date" value="<?php echo $row['expected_date']; ?>" placeholder="Date"/><br>
<div style="float:right; margin-right:10px;">

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Guardar Cambios</button>
</div>
</div>
</form>
<?php
}
?>