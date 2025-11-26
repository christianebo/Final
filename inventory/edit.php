<?php include 'db.php';

$id = $_GET['id'];
$item = $conn->query("SELECT * FROM inventory WHERE id=$id")->fetch_assoc();

if(isset($_POST['submit'])){
    $item_name = $_POST['item_name'];
    $description = $_POST['description'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];
    $category = $_POST['category'];
    $sku = $_POST['sku'];
    $supplier = $_POST['supplier'];

    $sql = "UPDATE inventory SET 
        item_name='$item_name', 
        description='$description',
        quantity='$quantity',
        price='$price',
        category='$category',
        sku='$sku',
        supplier='$supplier'
        WHERE id=$id";

    $conn->query($sql);
    header("Location: index.php");
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Edit Item</title>
<style>
body { font-family: Arial; padding: 20px; }
form { width: 350px; }
input, textarea { width: 100%; padding: 8px; margin-bottom: 10px; }
button {
    padding: 10px 20px;
    background: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}
a { text-decoration: none; color: #333; }
</style>
</head>
<body>

<h2>Edit Inventory Item</h2>

<form method="POST">
    <input type="text" name="item_name" value="<?= $item['item_name'] ?>" required>
    <textarea name="description" required><?= $item['description'] ?></textarea>
    <input type="number" name="quantity" value="<?= $item['quantity'] ?>" required>
    <input type="number" step="0.01" name="price" value="<?= $item['price'] ?>" required>
    <input type="text" name="category" value="<?= $item['category'] ?>">
    <input type="text" name="sku" value="<?= $item['sku'] ?>">
    <input type="text" name="supplier" value="<?= $item['supplier'] ?>">

    <button type="submit" name="submit">Update</button>
</form>

<br>
<a href="index.php">Back</a>

</body>
</html>
