<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

<h3>Register a Student</h3>
<a href="index.php">Back to Menu</a><br><br>

<form method="POST">
    <input name="idNum" class="form-control mb-2" placeholder="ID Number" required>
    <input name="studFName" class="form-control mb-2" placeholder="First Name" required>
    <input name="studLName" class="form-control mb-2" placeholder="Last Name" required>

    <select name="campus" class="form-control mb-2" required>
        <option>Main</option>
        <option>Banilad</option>
        <option>LM</option>
        <option>PT</option>
    </select>

    <input name="amountPaid" class="form-control mb-2" placeholder="Amount Paid" required>
    <button name="save" class="btn btn-success w-100">Save</button>
</form>

<?php
if (isset($_POST['save'])) {
    $id = $_POST['idNum'];
    $chk = $conn->query("SELECT * FROM registration WHERE idNum='$id'");

    if ($chk->num_rows > 0) {
        echo "<div class='alert alert-danger mt-3'>ID ALREADY REGISTERED</div>";
    } else {
        $conn->query("INSERT INTO registration VALUES('$id','$_POST[campus]','$_POST[studFName]','$_POST[studLName]',$_POST[amountPaid],'No')");
        echo "<div class='alert alert-success mt-3'>REGISTERED SUCCESSFULLY</div>";
    }
}

$result = $conn->query("SELECT * FROM registration");
?>

<table class="table table-bordered mt-3">
<tr>
    <th>ID</th><th>Name</th><th>Campus</th><th>Amount</th>
</tr>

<?php while ($row = $result->fetch_assoc()) { ?>
<tr>
    <td><?= $row['idNum'] ?></td>
    <td><?= $row['studFName'] . " " . $row['studLName'] ?></td>
    <td><?= $row['campus'] ?></td>
    <td><?= $row['amountPaid'] ?></td>
</tr>
<?php } ?>

</table>

</body>
</html>