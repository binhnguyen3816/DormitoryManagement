<?php
$hostName = 'localhost';
$userName = 'root';
$password = '';
$database = 'asm2';

$conn = @new mysqli( $hostName, $userName, $password, $database);

$conn->error;
if ($conn->error) {
    die("Connection failed: " . $conn->connect_error);
}
?>