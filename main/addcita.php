<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="savecita.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Agregar Cita</h4></center>
<hr>
<div id="ac">
<span>Nombre Cliente: </span><input type="text" style="width:265px; height:30px;" name="name" placeholder="Nombre Completo" Required/><br>


<span>Barbero: </span>
<select name="supplier"  style="width:265px; height:30px; margin-left:-5px;" >
<option></option>
	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM supliers");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['suplier_name']; ?></option>
	<?php
	}
	?>
</select><br>


<span>Telf Cliente: </span><input type="text" style="width:265px; height:30px;" name="contact" placeholder="Telefono"/><br>

<span>Servicio Solicitado: </span>
<select name="servicerequest"  style="width:265px; height:30px; margin-left:-5px;" >
<option></option>
	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT DISTINCT product_code FROM products");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['product_code']; ?></option>
	<?php
	}
	?>
</select><br>

<span>Monto: </span><input type="text" style="width:265px; height:30px;" name="memno" placeholder="Total"/><br>
<span>Hora: </span><textarea style="height:60px; width:265px;" name="note"></textarea><br>
<span>Fecha: </span><input type="date" style="width:265px; height:30px;" name="date" placeholder="Date"/><br>
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Guardar</button>
</div>
</div>
</form>