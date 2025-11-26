 <?php include 'db.php';

$id = $_GET['id'];
$clinic = $conn->query("SELECT * FROM clinics WHERE id=$id")->fetch_assoc();

if(isset($_POST['submit'])){
    $name = $_POST['name'];
    $address = $_POST['address'];
    $contact = $_POST['contact'];

    $sql = "UPDATE clinics SET name='$name', address='$address', contact='$contact' WHERE id=$id";
    $conn->query($sql);

    header("Location: index.php");
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Clinic</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-4" style="max-width: 500px;">

    <h3 class="mb-3">Edit Clinic</h3>

    <form method="POST">

        <div class="mb-2">
            <label class="form-label">Clinic Name</label>
            <input type="text" name="name" class="form-control form-control-sm" value="<?= $clinic['name'] ?>"required>
        </div>

        <div class="mb-2">
            <label class="form-label">Address</label>
            <textarea name="address" class="form-control form-control-sm" rows="2" required><?= $clinic['address'] ?></textarea>
        </div>

        <div class="mb-2">
            <label class="form-label">Contact Number</label>
            <input type="text" name="contact" class="form-control form-control-sm" value="<?= $clinic['contact'] ?>">
        </div>

        <button type="submit" name="submit" class="btn btn-primary btn-sm">Update</button>
        <a href="index.php" class="btn btn-secondary btn-sm">Back</a>

    </form>

</div>

</body>
</html>
