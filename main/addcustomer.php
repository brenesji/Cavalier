<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="savecustomer.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Agregar Cliente</h4></center>
<hr>
<div id="ac">
<span>Nombre Completo: </span><input type="text" style="width:265px; height:30px;" name="name" placeholder="Nombre Completo" Required/><br>
<span>Direccion : </span><input type="text" style="width:265px; height:30px;" name="address" placeholder="Direccion"/><br>
<span>Telefono : </span><input type="text" style="width:265px; height:30px;" name="contact" placeholder="Contacto"/><br>
<span>Email : </span><textarea style="height:70px; width:265px;" name="prod_name"></textarea><br>
<span>Ingreso Promedio: </span><input type="text" style="width:265px; height:30px;" name="memno" placeholder="Total"/><br>
<span>Nota : </span><textarea style="height:60px; width:265px;" name="note"></textarea><br>
<span>Fecha: </span><input type="date" style="width:265px; height:30px;" name="date" placeholder="Date"/><br>
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Guardar</button>
</div>
</div>
</form>