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
      
    
    
    <title>Tech Shop</title>
</head>
<body>
    <header>
        <div class="logo"><img src="logo/logo.png"></div>
        <div class="search-place">
            <input type="text" class="id-search" id="id-search" placeholder="Search Product">
            <button class="btn-main"><i class="fa fa-search"></i></button>
        </div>
        <div class="items-nav">
            <div class = item-option title="Home">
                <a href="index.php"><i class="fa fa-home"></i></a>
            </div>
            <div class = item-option title="Products List">
                <a href="products_list.php"><i class="fa fa-list"></i></a>
            </div>
            <div class="item-option" title="Register new product">
                <a href="add_product.php"><i class="fa fa-sign-in"></i></a>
            </div>            
            <div class="item-option" title="Create User"><i class="fa fa-user"></i></div>
            <div class="item-option" title="Shopping Cart"><i class="fa fa-shopping-cart"></i></div>          
        </div>
    </header>    
    <div class="container">
    <h1>HOME</h1>
        <!-- Banner Advertising  -->
        

        <h1> PRODUCTS </h1> <br>

        <div class="card_container">
            <?php
                include ("_connect.php");
                $category_name="SELECT p.*, c.name AS category_name FROM ts_product p JOIN ts_category c ON p.category_id = c.id";
                $stmt = $pdo->query($category_name);
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            ?>
                <div>
                        <div class="card">
                            <div class="card_margin">                        
                                <img src="<?php echo $row['image_url']; ?>" alt=" " width=" ">
                            </div>
                            <div class ="content_product">
                                <h4><?php echo $row['category_name']?></h4>
                                <p><?php echo $row['description']?></p>                                            
                            </div>
                            <div class="price">
                                <p>$<?php echo $row['price']?></p>
                            </div>
                        </div>
                    </div>
            <?php
                }
            ?> 
        </div>   

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</body>
</html>