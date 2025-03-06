<?php 
$host = 'mysql'
$user = 'root';
$password = 'lewis254';
$database = 'auth_system';


$conn = new mysqli($host,$user,$password,$database);


if ($conn->connect_error){
	die("connection failed:".$conn.connect_error);
}
?>

