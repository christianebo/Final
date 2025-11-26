<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
<title>Attendance</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

<h3>Record Attendance</h3>
<a href="index.php">Back to Menu</a><br><br>

<form method="POST">
    <input name="idNum" class="form-control mb-2" placeholder="Enter ID Number">
    <button name="submit" class="btn btn-primary w-100">Submit</button>
</form>

<?php
if (isset($_POST['submit'])) {
    $id = $_POST['idNum'];
    $chk = $conn->query("SELECT * FROM registration WHERE idNum='$id'");

    if ($chk->num_rows == 0) {
        echo "<div class='alert alert-danger mt-3'>ID IS NOT YET REGISTERED.</div>";
    } else {
        $row = $chk->fetch_assoc();
        if ($row['attended'] == "Yes") {
            echo "<div class='alert alert-warning mt-3'>Attendance ALREADY RECORDED.</div>";
        } else {
            $conn->query("UPDATE registration SET attended='Yes' WHERE idNum='$id'");
            echo "<div class='alert alert-success mt-3'>Attendance RECORDED.</div>";
        }
    }
}
?>

</body>
</html>
