<?php
   $db = mysqli_connect('localhost', 'root' ,'', 'sales');
   
   	$link = mysqli_connect('localhost','root',"");
	if(!$link) {
		die('Failed to connect to server: ' . mysqli_error());
	}
   
   	/*$db = mysqli_select_db($link, 'sales');
	if (!$db) {
		die("Database selection failed: " . mysqli_error());
	}
   
   
       //get search term
    $searchTerm = $_GET['term'];
    
    //get matched data from skills table
    //$query = $db->query("SELECT * FROM skills WHERE skill LIKE '%".$searchTerm."%' ORDER BY skill ASC");
	//$query = $db->query("SELECT customer_name FROM customer WHERE customer_name LIKE '%".$searchTerm."%' LIMIT 10");
	$query = mysqli_real_escape_string($link,"SELECT customer_name FROM customer WHERE customer_name LIKE '%".$searchTerm."%' LIMIT 10");
    while ($row = $query->fetch_assoc()) {
        $data[] = $row['customer_name'];
    }
    
    //return json data
    echo json_encode($data);*/
   
   
   
   
   
	if(!$db) {
	
		echo 'Could not connect to the database.';
	} else {
	
		if(isset($_POST['queryString'])) {
			//$queryString = $db->mysqli_real_escape_string($link,$_POST['queryString']);
			$queryString = mysqli_real_escape_string($link,$_POST['queryString']);
			
			if(strlen($queryString) >0) {

				$query = "SELECT customer_name FROM customer WHERE customer_name LIKE '$queryString%' LIMIT 10";
				//$query = mysqli_real_escape_string($link,"SELECT customer_name FROM customer WHERE customer_name LIKE '$queryString%' LIMIT 10");
				if($query =true) {
				echo '<ul>';
					while ($result = $query->fetch_object()) {
	         			echo '<li onClick="fill(\''.addslashes($result->customer_name).'\');">'.$result->customer_name.'</li>';
	         		}
				echo '</ul>';
					
				} else {
					echo 'OOPS we had a problem :(';
				}
			} else {
				// do nothing
			}
		} else {
			echo 'There should be no direct access to this script!';
		}
	}
	$mysqli->close();
?>
