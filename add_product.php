<?php
require("_connect.php");
if (isset($_POST['submit']))  {   
    // Get form information
    $manufacturer = filter_input(INPUT_POST, "manufacturer", FILTER_SANITIZE_STRING);
    $reference = filter_input(INPUT_POST, "reference", FILTER_SANITIZE_STRING);
    $description = filter_input(INPUT_POST, "description", FILTER_SANITIZE_STRING);
    $price = filter_input(INPUT_POST, "price", FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
    $category_id = filter_input(INPUT_POST, "category_id", FILTER_SANITIZE_NUMBER_INT);
    
    // Process image
    if ($_FILES["image"]["error"] == UPLOAD_ERR_OK) {
      $tmp_name = $_FILES["image"]["tmp_name"];
      $name = $_FILES["image"]["name"];
      $image_url = "images/" . $name;
      move_uploaded_file($tmp_name, $image_url);
    } else {
      $image_url = "";
    }
    
    $features = filter_input(INPUT_POST, "features", FILTER_SANITIZE_STRING);  
    
    // Insert info on BD
    try {
      $sql = "INSERT INTO TS_Product (manufacturer, Reference, description, price, image_url, features, category_id) 
              VALUES (:manufacturer, :reference, :description, :price, :image_url, :features, :category_id)";
      $stmt = $pdo->prepare($sql);
      $stmt->bindParam(':manufacturer', $manufacturer);
      $stmt->bindParam(':reference', $reference);
      $stmt->bindParam(':description', $description);
      $stmt->bindParam(':price', $price, PDO::PARAM_STR);
      $stmt->bindParam(':image_url', $image_url);
      $stmt->bindParam(':features', $features);
      $stmt->bindParam(':category_id', $category_id, PDO::PARAM_INT);
      $stmt->execute();
      // echo "Register added successfully";
    } catch(PDOException $e) {
      echo "Error to add register: " . $e->getMessage();
    }    
    // Close connection
    $pdo = null;
    header("Location: products_list_admin.php?msg=Item was added successfully");    
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
    <title>Add new product</title>
</head>
<body>
    <!-- Navigation Bar -->
    <header class="w_search">
        <div class="logo"><img src="logo/logo.png" alt=""></div>
        
        <div class="items-nav">
            <div class = item-option title="Home">
                <a href="index_admin.php"><i class="fa fa-home"></i></a>
            </div>
            <div class = item-option title="Products List">
                <a href="products_list_admin.php"><i class="fa fa-list"></i></a>
            </div>
            <div class="item-option" title="Register new product">
                <a href="add_product.php"><i class="fa fa-sign-in"></i></a>
            </div>            
            <div class="item-option" title="Log In">
                <a href="login.php"><i class="fa fa-user"></i></a>            
            </div>
            <div class="item-option" title="Shopping Cart"><i class="fa fa-shopping-cart"></i></div>          
        </div>
    </header>

<h2 class="navbar navbar-light justify-content-center fs-4 mb-3"> ADD NEW PRODUCT</h2>

    <!-- Input Data Form -->
    <div class="container">
      <div class="text-center mb-8">                
      </div>
      <div class="container d-flex justify-content-center">
        <form method="post" style="width:50%;  min-width:300px" action="#" enctype="multipart/form-data"> 

          <div class="col">
              <label for="manufacturer">Manufacturer:</label>
              <input type="text" class="form-control"  id="manufacturer" name="manufacturer" required>
          </div>
          <div class="col">
              <label for="reference">Reference</label>
              <input type="text" class="form-control" id="reference" name="reference" required>
          </div>          
          <div class="col">
              <label for="description">Description:</label>
              <input type="text" class="form-control" id="description" name="description" required>
          </div>
          <div class="col">              
              <label for="price">Price:</label>
              <input type="number" class="form-control" id="price" name="price" step="0.01" required>
          </div>          
          <div class="col">
              <label for="features">Features:</label><br>
              <textarea name="features" class="form-control" id="features" rows="3" cols="40"></textarea>
          </div><br>
          <div class="col">
              <label for="image">Image:</label><br>
              <input type="file" id="image" name="image"><br><br>
          </div>
          <!-- Drop down category list -->
          <div class="col">
              <?php                    
                $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                $category_name_query = "SELECT id, name AS category_name
                                        FROM ts_category;";
                $stmt = $pdo->query($category_name_query);
              ?>
                <label for="category_id">Categoría:</label>
                <select name="category_id" id="category_id">
                  <?php while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) { ?>
                    <option value="<?php echo $row['id']; ?>"><?php echo $row['category_name']; ?></option>
                  <?php } ?>
                </select>
          </div><br>          
          <div class="col">
              <button type="submit" class="btn btn-success" name="submit">SAVE</button>
              <a href="products_list_admin.php" class="btn btn-danger">CANCEL</a>
          </div>           
        </form>
      </div>
    </div> 
    <!-- Boostrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</body>
</html>