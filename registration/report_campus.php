<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
<title>Report By Campus</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

<h3>Report By Campus</h3>
<a href="index.php">Back to Menu</a><br><br>

<form method="POST">
    <select name="campus" class="form-control mb-2">
        <option>Main</option>
        <option>Banilad</option>
        <option>LM</option>
        <option>PT</option>
    </select>
    <button name="gen" class="btn btn-primary w-100">Generate Report</button>
</form>

<?php
if (isset($_POST['gen'])) {
    $campus = $_POST['campus'];
    $data = $conn->query("SELECT * FROM registration WHERE campus='$campus'");
?>

<h4 class="mt-4">Campus: <?= $campus ?></h4>

<table class="table table-bordered mt-3">
<tr>
    <th>ID</th><th>Name</th><th>Amount</th><th>Attended</th>
</tr>

<?php while ($row = $data->fetch_assoc()) { ?>
<tr>
    <td><?= $row['idNum'] ?></td>
    <td><?= $row['studFName'] . " " . $row['studLName'] ?></td>
    <td><?= $row['amountPaid'] ?></td>
    <td><?= $row['attended'] ?></td>
</tr>
<?php } ?>

</table>

<?php } ?>

</body>
</html>