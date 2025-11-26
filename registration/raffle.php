<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
<title>Raffle</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>

<body class="p-4">

<h3>Raffle Draw</h3>
<a href="index.php">Back to Menu</a><br><br>

<form method="POST">
    <select name="campus" class="form-control mb-2">
        <option>Main</option>
        <option>Banilad</option>
        <option>LM</option>
        <option>PT</option>
    </select>
    <button name="draw" class="btn btn-success w-100">Reveal Lucky Winner</button>
</form>

<?php
if (isset($_POST['draw'])) {
    $campus = $_POST['campus'];
    $res = $conn->query("SELECT * FROM registration WHERE campus='$campus' ORDER BY RAND() LIMIT 1");

    if ($res->num_rows == 0) {
        echo "<div class='alert alert-warning mt-3'>No registrants in this campus.</div>";
    } else {
        $w = $res->fetch_assoc();
        echo "<div class='alert alert-info mt-4 p-3'>
            <h4>Winner:</h4>
            <b>ID:</b> $w[idNum] <br>
            <b>Name:</b> $w[studFName] $w[studLName] <br>
            <b>Campus:</b> $w[campus]
        </div>";
    }
}
?>

</body>
</html>