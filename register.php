<?php

	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
       $name = $_POST['username'];
       $email = $_POST['email'];
       $password = $_POST['password'];
        
       $password = password_hash($password, PASSWORD_DEFAULT);
        
       include 'connection.php';

       $sql = "INSERT INTO `users`(`username`,`email`,`password`) VALUES ('$name','$email','$password')";

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