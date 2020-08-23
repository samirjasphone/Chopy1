<?php
 
$db = new mysqli('localhost','root','','hospitallocator');
 
if($db->connect_error)
{
	die('Database Connection Error: '.$db->connect_errno);
}
 
 
$qry = "select hospitalname,latitude,longtude, hospitaladdress from hospital";
$rs = $db->query($qry);
 
while ($rows = $rs->fetch_assoc()){
    $flag[]=$rows;
}
 
$jsonEncode = json_encode($flag);
 
header('Content-type: application/json');
echo $jsonEncode;
?>
