<?php
include 'db.php';
$id = $_GET['id'];
$conn->query("DELETE FROM clinics WHERE id=$id");
header("Location: index.php");
exit();