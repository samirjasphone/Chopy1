<?php

	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
       $hospitalname = $_POST['hospitalname'];
       $comment = $_POST['comment'];
       $rate = $_POST['rate'];
        $service = $_POST['service'];
        
        $rate = (float) $rate;
       include 'connection.php';

       $sql = "INSERT INTO `comments`(`hospitalname`,`service`,`comment`,`rate`) VALUES('$hospitalname','$service', '$comment', $rate)";

       if ( mysqli_query($connection,$sql) ) {
        $result["message"] = "success";

        echo json_encode($result);
        mysqli_close($connection);

    } else {

        $result["success"] = "0";
        $result["message"] = "error";

        echo json_encode($result);
        mysqli_close($connection);
    }
		# code...
	}
?>