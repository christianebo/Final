<?php 
include 'db.php';

if(isset($_POST['submit'])){
    $name = $_POST['item_name'];
    $desc = $_POST['description'];
    $qty = $_POST['quantity'];
    $price = $_POST['price'];
    $cat = $_POST['category'];
    $sku = $_POST['sku'];
    $sup = $_POST['supplier'];
    $date = $_POST['date_added'];

    $sql = "INSERT INTO inventory (item_name, description, quantity, price, category, sku, supplier, date_added)
            VALUES ('$name', '$desc', $qty, $price, '$cat', '$sku', '$sup', '$date')";
    $conn->query($sql);

    header("Location: index.php");
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-4" style="max-width: 500px;">

    <h3>Add Item</h3>

    <form method="POST">

        <div class="mb-2">
            <label>Item Name</label>
            <input type="text" name="item_name" class="form-control form-control-sm" required>
        </div>

        <div class="mb-2">
            <label>Description</label>
            <textarea name="description" class="form-control form-control-sm"></textarea>
        </div>

        <div class="mb-2">
            <label>Quantity</label>
            <input type="number" name="quantity" class="form-control form-control-sm" required>
        </div>

        <div class="mb-2">
            <label>Price</label>
            <input type="number" step="0.01" name="price" class="form-control form-control-sm" required>
        </div>

        <div class="mb-2">
            <label>Category</label>
            <input type="text" name="category" class="form-control form-control-sm">
        </div>

        <div class="mb-2">
            <label>SKU</label>
            <input type="text" name="sku" class="form-control form-control-sm">
        </div>

        <div class="mb-2">
            <label>Supplier</label>
            <input type="text" name="supplier" class="form-control form-control-sm">
        </div>

        <div class="mb-2">
            <label>Date Added</label>
            <input type="date" name="date_added" class="form-control form-control-sm">
        </div>

        <button type="submit" name="submit" class="btn btn-primary btn-sm">Save</button>
        <a href="index.php" class="btn btn-secondary btn-sm">Back</a>

    </form>

</div>

</body>
</html>
