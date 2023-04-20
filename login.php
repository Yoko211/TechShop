<?php 
require '_connect.php';
SESSION_START();

$error_message = ""; 

if(isset($_POST['username']) && isset($_POST['password'])){ 
  $username = $_POST['username'];
  $password = $_POST['password']; 

  if ($username == null || $password == null){
    //echo "Type username and password";
    $error_message = "Type username and password";          
  }
  else{
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $pdo->prepare('SELECT username, password, id_role FROM ts_user WHERE username = :username AND password = :password');
    $stmt->execute(array(':username' => $username, ':password' => $password));
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($row == true){      
      echo $row['id_role'];
      switch ($row['id_role']) {
        case '1':
          header ('location: index_admin.php');
          echo "validation OK";
          break;
        case '2':
          header ('location: index.php');
          break;        
        default:          
          break;
      }
    
    }else{
      $error_message = "Username or Password incorrect";     
    }
  }  
}
?>


<!DOCTYPE html>
<html>
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
    <title>Login</title>
  </head>

  <body>
  <header>
        <div class="logo"><img src="logo/logo.png"></div>        
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

    <div class="validation-group">
    <h1>Sign In</h1>    
      <form method="post" action="">
          <div class="form-group">            
            <input type="text" class="form-control"  id="username" name="username" placeholder="USERNAME">        
          </div>
          <div class="form-group">            
            <input type="password" class="form-control" id="password" name="password" placeholder="PASSWORD">
          </div>
          <div>
            <p class="error-message"><?php echo $error_message; ?> </p>
          </div>
          <div class="login-buttons">          
            <button type="submit" class="btn btn-primary">SUBMIT</button>      
            <a href="index.php" class="btn btn-danger">CANCEL</a>
          </div>        
      </form>
    </div>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </body>
</html>
