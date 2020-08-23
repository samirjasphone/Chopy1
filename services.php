<?php	

    if ($_SERVER["REQUEST_METHOD"] == 'GET') {
        //database constants
        define('DB_HOST', 'localhost');
        define('DB_USER', 'root');
        define('DB_PASS', '');
        define('DB_NAME', 'hospitallocator');
        
        $hospital_name = $_GET['hospital_name'];

        //connecting to database and getting the connection object
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

        //Checking if any error occured while connecting
        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
            die();
        }

        //creating a query
        $stmt = $conn->prepare("SELECT services.id,servicename FROM services, hospitalservices,hospital WHERE hospitalservices.hospitalID=hospital.id AND services.id=hospitalservices.servicesID AND hospitalname='$hospital_name';");

        //executing the query 
        $stmt->execute();

        //binding results to the query 
        $stmt->bind_result($id, $service);

        $services = array(); 

        //traversing through all the result 
        while($stmt->fetch()){
            $temp = array();
            $temp['id'] = $id; 
            $temp['servicename'] = $service; 
            array_push($services, $temp);
        }

        //displaying the result in json format 
        echo json_encode($services);
    }
	
?>