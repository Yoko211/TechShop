<!--
    Final Project
    Name: Juan Alejandro Londono
    Date: Apr 21 2023
    Description: Final Project

-->

<?php 
    include ("_connect.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
    <link rel="stylesheet" href="style.css">    
<title>Products List</title>
</head>
<body>

<header>
    <div class="logo"><img src="logo/logo.png" alt=" "></div>
    <form action="#" method="GET" class="search-place">
        <input type="text" class="id-search" id="id-search" name="search" placeholder="Search Product" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
        <select name="category">
            <option value="">All Categories</option>
            <?php
                $stmt = $pdo->query("SELECT * FROM ts_category");
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo '<option value="' . $row['id'] . '"';
                    if (isset($_GET['category']) && $_GET['category'] == $row['id']) {
                        echo ' selected';
                    }
                    echo '>' . $row['name'] . '</option>';
                }
            ?>
        </select>
        <button class="btn-main"><i class="fa fa-search"></i></button>
    </form>
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
    <div class="container">
    <h4>PRODUCTS</h4>
    <?php
        if (isset($_GET['msg'])) {
            $msg = $_GET['msg'];
            echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">' . $msg . '
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>';
        }    
    ?>
    <table class="table table-hover text-center">
        <thead class="table-dark">
            <tr>
                <th scope="col">Manufacturer</th>
                <th scope="col">Reference</th>
                <th scope="col">Price</th>
                <th scope="col">Category</th>
                <th scope="col">Image</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $category_id = '';
                $category_name="SELECT p.*, c.name AS category_name FROM ts_product p JOIN ts_category c ON p.category_id = c.id ";

                if (isset($_GET['category']) && !empty($_GET['category'])) {
                    $category_id = $_GET['category'];
                    $category_name .= "WHERE p.category_id = $category_id ";
                }

                $category_name .= "ORDER BY RAND(p.id)";
                $stmt = $pdo->query($category_name);
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    // Filter search
                    if (isset($_GET['search']) && !empty($_GET['search'])) {
                        $search = $_GET['search'];
                        if (stripos($row['manufacturer'], $search) === false && stripos($row['reference'], $search) === false) {
                            continue; 
                        }
                    }
            ?>
            <!-- Send information product to product info section -->
            <tr onclick="window.location='product_info.php?<?php echo http_build_query(array(
                            'id' => $row['id'],
                            'manufacturer' => $row['manufacturer'],
                            'reference' => $row['reference'],
                            'description' => $row['description'],
                            'price' => $row['price'],
                            'image_url' => $row['image_url'],
                            'features' => $row['features']
                        )); ?>'">
                <td><?php echo $row['manufacturer']?></td>
                <td><?php echo $row['reference']?></td>
                <td><?php echo $row['price']?></td>
                <td><?php echo $row['category_name']?></td>
                <td><img src="<?php echo $row['image_url']; ?>" alt=" " width="100"></td>
                <td>
                    <a href="edit.php?id=<?php echo $row['id']?>" class="link-dark">
                        <i class="fa-solid fa-pen-to-square fa-1x" title="Edit" style="color: #284880;"></i>
                    </a>                    
                    <a href="delete.php?id=<?php echo $row['id']?>" class="link-dark" onclick="return confirm('¿Are you sure you want to delete the product?')">
                        <i class="fa-solid fa-trash fa-1x" title= "Delete" style="color: #284880;"></i>
                    </a>                    
                    
                </td>                
            </tr>
            <?php
                }
            ?>
        </tbody>
    </table>
</div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />    
</body>
</html>