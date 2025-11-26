<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
<title>Summary</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

<h3>Summary Report</h3>
<a href="index.php">Back to Menu</a><br><br>

<?php
$campuses = ["Main","Banilad","LM","PT"];
?>

<table class="table table-bordered mt-3">
<tr>
    <th>Campus</th><th>Registered</th><th>Attended</th><th>Total Amount</th>
</tr>

<?php
$totalReg = 0;
$totalAtt = 0;
$totalAmt = 0;

foreach ($campuses as $c) {
    $reg = $conn->query("SELECT * FROM registration WHERE campus='$c'")->num_rows;
    $att = $conn->query("SELECT * FROM registration WHERE campus='$c' AND attended='Yes'")->num_rows;
    $amtRow = $conn->query("SELECT SUM(amountPaid) AS total FROM registration WHERE campus='$c'")->fetch_assoc();
    $amt = $amtRow['total'] ?? 0;

    $totalReg += $reg;
    $totalAtt += $att;
    $totalAmt += $amt;

    echo "
    <tr>
        <td>$c</td>
        <td>$reg</td>
        <td>$att</td>
        <td>$amt</td>
    </tr>";
}
?>

<tr>
    <th>TOTAL</th>
    <th><?= $totalReg ?></th>
    <th><?= $totalAtt ?></th>
    <th><?= $totalAmt ?></th>
</tr>
</table>

</body>
</html>