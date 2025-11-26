<?php include 'db.php'; ?>
<!DOCTYPE html>
<html>
<head>
    <title>Inventory List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-4">

    <h3>Inventory Items</h3>
    <a href="create.php" class="btn btn-primary btn-sm mb-3">Add Item</a>

    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Qty</th>
            <th>Price</th>
            <th>Category</th>
            <th>SKU</th>
            <th>Supplier</th>
            <th>Date Added</th>
            <th>Actions</th>
        </tr>

        <?php
        $result = $conn->query("SELECT * FROM inventory");
        while($row = $result->fetch_assoc()):
        ?>
        <tr>
            <td><?= $row['id'] ?></td>
            <td><?= $row['item_name'] ?></td>
            <td><?= $row['quantity'] ?></td>
            <td><?= $row['price'] ?></td>
            <td><?= $row['category'] ?></td>
            <td><?= $row['sku'] ?></td>
            <td><?= $row['supplier'] ?></td>
            <td><?= $row['date_added'] ?></td>
            <td>
                <a href="edit.php?id=<?= $row['id'] ?>" class="btn btn-warning btn-sm">Edit</a>
                <a href="delete.php?id=<?= $row['id'] ?>" class="btn btn-danger btn-sm"
                   onclick="return confirm('Delete this item?')">Delete</a>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>

</div>

</body>
</html>
