<?php
 
$db = new mysqli('localhost','root','','hospitallocator');
 
if($db->connect_error)
{
	die('Database Connection Error: '.$db->connect_errno);
}
 
 
$qry = "select hospitalname,latitude,longtude,insurancename,hospitaladdress FROM hospitalinsurance,hospital,insurance WHERE hospital.id=hospitalinsurance.hospitalID AND insurance.id=hospitalinsurance.insuranceID AND insurancename='nhif'";
$rs = $db->query($qry);
 
while ($rows = $rs->fetch_assoc()){
    $flag[]=$rows;
}
 
$jsonEncode = json_encode($flag);
 
header('Content-type: application/json');
echo $jsonEncode;
?>
