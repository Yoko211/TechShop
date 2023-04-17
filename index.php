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
    <?php
            $products_by_page = 10;

            // Get the total number of products
            $category = isset($_GET['category']) ? $_GET['category'] : '';
            $manufacturer = isset($_GET['manufacturer']) ? $_GET['manufacturer'] : '';
            $search_query = isset($_GET['search']) ? $_GET['search'] : '';
            $where_clause = '';
            $bind_params = [];
            if ($category !== '') {
                $where_clause .= 'WHERE c.name = :category';
                $bind_params['category'] = $category;
            }
            if ($manufacturer !== '') {
                if ($where_clause === '') {
                    $where_clause .= 'WHERE ';
                } else {
                    $where_clause .= ' AND ';
                }
                $where_clause .= 'p.manufacturer = :manufacturer';
                $bind_params['manufacturer'] = $manufacturer;
            }
            if ($search_query !== '') {
                if ($where_clause === '') {
                    $where_clause .= 'WHERE ';
                } else {
                    $where_clause .= ' AND ';
                }
                $where_clause .= 'p.description LIKE :search_query';
                $bind_params['search_query'] = "%{$search_query}%";
            }
            $total_stmt = $pdo->prepare("SELECT COUNT(*) FROM ts_product p JOIN ts_category c ON p.category_id = c.id $where_clause");
            foreach ($bind_params as $key => &$value) {
                $total_stmt->bindParam(':' . $key, $value);
            }
            $total_stmt->execute();
            $total_products = $total_stmt->fetchColumn();

            // Calculate the total number of pages
            $total_pages = ceil($total_products / $products_by_page);

            // Get current page
            if (isset($_GET['page'])) {
                $current_page = $_GET['page'];
            } else {
                $current_page = 1;
            }

            // Calculate the index of the first product on the current page
            $first_product = ($current_page - 1) * $products_by_page;

            // Get products for current page
            $paginated_stmt = $pdo->prepare("SELECT p.*, c.name AS category_name FROM ts_product p JOIN ts_category c ON p.category_id = c.id $where_clause ORDER BY p.id LIMIT $first_product, $products_by_page");
            foreach ($bind_params as $key => &$value) {
                $paginated_stmt->bindParam(':' . $key, $value);
            }
            $paginated_stmt->execute();
        ?>

        <div class="logo"><img src="logo/logo.png"></div>

        <!-- Search form -->

        <form action="" method="get" class="search-place">            
            <input type="text" name="search" class="id-search" id="search" placeholder="Search Product" value="<?php echo $search_query ?>">
            <select name="category" class="id-category">
                <option value="">All Categories</option>
                <?php
                $categories_stmt = $pdo->prepare("SELECT * FROM ts_category");
                $categories_stmt->execute();
                while ($row = $categories_stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo '<option value="' . $row['name'] . '">' . $row['name'] . '</option>';
                }
                ?>
            </select>
            <button type="submit" class="btn-main"><i class="fa fa-search"></i></button>
        </form>

        <div class="items-nav">
            <div class="item-option" title="Home">
                <a href="index.php"><i class="fa fa-home"></i></a>
            </div>                            
            <div class="item-option" title="Log In">
                <a href="login.php"><i class="fa fa-user"></i></a>            
            </div>
            <div class="item-option" title="Shopping Cart"><i class="fa fa-shopping-cart"></i></div>          
        </div>
        
    </header>    
    <div class="container">
    <h1>HOME</h1>
        <!-- Banner Advertising  -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="advertising/ryzen.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="advertising/legion.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="advertising/nvidia.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="advertising/giga.jpg" alt="four slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="advertising/Razer-headsets.jpg" alt="fifth slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="advertising/asus.jpg" alt="six slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="advertising/rtx3090.jpg" alt="seven slide">
                </div>                
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><br>
         
    <h1> PRODUCTS </h1> <br>
    <!-- Show the products for the current page -->
    <div class="card_container">
        <?php while ($row = $paginated_stmt->fetch(PDO::FETCH_ASSOC)) { ?>
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
        <?php } ?>
    </div><br>
    <!-- Show the pagination -->
    <div class="pagination-text">
        <?php for ($i = 1; $i <= $total_pages; $i++) { ?>
            <a href="?page=<?php echo " " . $i; ?>" <?php if ($i == $current_page) { echo 'class="active"'; } ?>><?php echo  " " . $i; ?></a>
        <?php } ?>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</body>
</html>