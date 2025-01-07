<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "saw_playstore";

try {
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset("utf8");
    echo "Connected successfully.";
} catch (Exception $e) {
    die("Connection failed: " . $e->getMessage());
}
?>
