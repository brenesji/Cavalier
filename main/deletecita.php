<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("DELETE FROM citas WHERE customer_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>