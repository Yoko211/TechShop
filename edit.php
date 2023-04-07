<?php
require("_connect.php");

$id = $_GET['id'];

// Fetch the product with the given ID
$sql = "SELECT * FROM `ts_product` WHERE id = :id LIMIT 1";
$stmt = $pdo->prepare($sql);
$stmt->execute(array(':id' => $id));
$row = $stmt->fetch(PDO::FETCH_ASSOC);

if (!isset($_POST["submit"])){
    $manufacturer = $row['manufacturer'];
    $reference = $row['reference'];
    $description = $row['description'];
    $price = $row['price'];
    $features = $row['features'];   
    $image = $row['image_url'];
    $category_id = $row['category_id'];
    
} else {
    $id = $_POST['id'];
    $manufacturer = $_POST['manufacturer'];
    $reference = $_POST['reference'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $features = $_POST['features'];
    $category_id = $_POST['category_id'];
    
    if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
        $image_tmp = $_FILES['image']['tmp_name'];
        $image_name = $_FILES['image']['name'];
        $image_path = "images/" . $image_name;
        move_uploaded_file($image_tmp, $image_path);
        $image = $image_path;
    } else {
        $image = $row['image_url'];
    }
    
    $sql = "UPDATE `ts_product` SET `reference`= ?, `manufacturer`= ?, `description`= ?, `price`= ?, `features`= ?, `image_url`= ?, `category_id`= ? WHERE id=?";
    $result = $pdo->prepare($sql);
    $result->execute(array($reference, $manufacturer, $description, $price, $features, $image, $category_id, $id));

    $pdo = null;
    header("location:products_list.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Boostrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css"> 
    <title>Add product</title>
</head>
<body>

    <header>
        <div class="logo"><img src="logo/logo.png"></div>
        <div class="search-place">
            <input type="text" class="id-search" id="id-search" placeholder="Search Product">
            <button class="btn-main"><i class="fa fa-search"></i></button>
        </div>
        <div class="items-nav">
            <div class="item-option" title="Register new product">
                <a href="add_product.php"><i class="fa fa-sign-in"></i></a>
            </div>
            <div class = item-option title="Home">
                    <a href="index.php"><i class="fa fa-home"></i></a>
            </div>
            <div class="item-option" title="Create User"><i class="fa fa-user"></i></div>
            <div class="item-option" title="Shopping Cart"><i class="fa fa-shopping-cart"></i></div>          
        </div>
    </header>
    <h2 class="navbar navbar-light justify-content-center fs-4 mb-3">EDIT PRODUCT INFORMATION</h2>


    <div class="container">
        <div class="container d-flex justify-content-center">        
            <form method="post" style="width:50%; min-width:300px" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" enctype="multipart/form-data">        
                <input type="hidden" name="id" value="<?php echo $row['id']; ?>">          
                
                <div class="col">
                    <label for="manufacturer">Manufacturer:</label>
                    <input type="text" class="form-control" name="manufacturer" required value="<?php echo $manufacturer ?>">
                </div><br>
                <div class="col">
                        <label for="reference">Reference:</label>
                        <input type="text" class="form-control" name="reference" required value="<?php echo $reference ?>">
                    </div><br>
                    
                    <div class="col">
                        <label for="description">Description:</label>
                        <textarea class="form-control" name="description" required><?php echo $description ?></textarea>
                    </div><br>

                    <div class="col">
                        <label for="price">Price:</label>
                        <input type="number" class="form-control" name="price" required value="<?php echo $price ?>">
                    </div><br>

                    <div class="col">
                        <label for="features">Features:</label>
                        <textarea class="form-control" name="features" required><?php echo $features ?></textarea>
                    </div><br>
                <div class="col">
                    <label for="image">Image:</label>
                    <?php if (!empty($row["image_url"])):?>
                        <img src="<?php echo $row["image_url"] ?>" alt=" " width="100"><br><br>
                    <?php endif; ?>
                    <input type="file" name="image" accept=".jpg,.png">
                </div> <br>         

                <div class="col">
                    <label for="category_id">ID de category:</label><br>
                    <input type="number" class="form-control" name="category_id" required><br>              
                </div>

                <div class="col">
                    <input type="hidden" name="id" value="<?php echo $id ?>">
                    <button type="submit" class="btn btn-success" name="submit">UPDATE</button>
                    <a href="products_list.php" class="btn btn-danger">CANCEL</a>
                </div>            
            </form>
        </div>
    </div>
</body>
</html>

    <!-- Boostrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
