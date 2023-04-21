<?php
    include ("_connect.php");

    if (isset($_POST['submit'])) {
        // Get the values of the form
        $product_id = $_GET['id'];
        $comment_title = $_POST['comment_title'];
        $user_comment = $_POST['user_comment'];        
    
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        // Prepare the SQL query to insert the comment
        $stmt = $pdo->prepare("INSERT INTO ts_comment (product_id, comment_title, user_comment) VALUES (:product_id, :comment_title, :user_comment)");
        $stmt->bindParam(':product_id', $product_id);
        $stmt->bindParam(':comment_title', $comment_title);
        $stmt->bindParam(':user_comment', $user_comment);
    
        // Execute the SQL query
        $stmt->execute();
    
        // Redirect the user to the home page
        header('Location: #');
        exit;
    }
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
<title>Product Information</title>
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
            <div class="item-option" title="Log In">
                <a href="login.php"><i class="fa fa-user"></i></a>            
            </div>
            <div class="item-option" title="Shopping Cart"><i class="fa fa-shopping-cart"></i></div>          
        </div>
    </header> 

    <div class="container"><br>
        <h1>PRODUCT INFORMATION</h1><br>

        <div class="product_container">
            <div class="product_image"> 
                <img src="<?php echo $_GET['image_url']; ?>" width="400px">
            </div>            
            <div class="product_info">
                <h4><?php echo $_GET['manufacturer']; ?> - <?php echo $_GET['reference']; ?></h4><br>
                <p><?php echo $_GET['description']; ?></p><br>
                <p><strong>Features:</strong> <?php echo $_GET['features']; ?></p><br>
                <p><strong>Price:</strong><p class="price-info"><?php echo '$' . number_format($_GET['price'], 2); ?></p></p>
            </div>
        </div><br>
        
        <section class="row"> 
            <div class="col">
                    <h4>Add Comment</h4><br>
                    <form method="POST">                    
                        <input type="text" name="comment_title" placeholder="Publish Title"> <br><br>
                        <textarea name="user_comment" placeholder="Add the comments here" class="form-control" rows="3" cols="30" required></textarea><br>
                        <button type="submit" class="btn btn-success" name="submit">SAVE</button>
                        <a href="index.php" class="btn btn-danger">CANCEL</a>
                    </form><br>                
            </div>
            <div class="col" id="comments">
                <h4 class="comments">Comments</h4><br>
                    <?php           
                    
                        // Get the product ID
                        $product_id = $_GET['id'];

                        // Connect to the database
                        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
                        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        
                        // Prepare the SQL query to retrieve comments for this product
                        $stmt = $pdo->prepare("SELECT comment_title, user_comment, created_at 
                                            FROM ts_comment 
                                            WHERE product_id = :product_id 
                                            ORDER BY created_at DESC");
                        $stmt->bindParam(':product_id', $product_id);
                        $stmt->execute();

                        // Print each comment
                        while ($row = $stmt->fetch()) {
                            $comment_date = $row['created_at'];
                            echo '<div>';
                    ?>
                        <p class="title_comment"><?php echo $row['comment_title']?></p>
                        <p class="small text-muted">Commented on: <?php  echo date("Y-m-d", strtotime($row  ['created_at']))?></p>
                        <p class="content_comment"><?php echo $row['user_comment']?></p>
                    <?php
                        echo '</div><hr>';
                    }
                    ?>
            </div>
        </section>        
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />    
</body>
</html>