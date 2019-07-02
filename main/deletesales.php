<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("DELETE FROM sales_order WHERE invoice= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>