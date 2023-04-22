
<!--
    Final Project
    Name: Juan Alejandro Londono
    Date: Apr 21 2023
    Description: Final Project

-->

<?php
    require("_connect.php");
    $id = $_GET['id'];
    echo $id;

    // Delete register query
    $sql = "DELETE FROM ts_product WHERE id = ?";
    $result = $pdo->prepare($sql);
    $result->execute(array($id));

    //Redirect to the product list Page
    if ($result) {
        header("Location: products_list_admin.php?msg=Item was deleted successfully");
    } else {     
        echo "Failed to delete record";
    }
?>