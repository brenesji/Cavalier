<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("DELETE FROM sales_order WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>