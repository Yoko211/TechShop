<?php 
require '_connect.php';
SESSION_START();

if(isset($_POST['username']) && isset($_POST['password'])){ 
  $username = $_POST['username'];
  $password = $_POST['password']; 

  if ($username == null || $password == null){
    echo "Type user name and password";     
  }
  else {
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $pdo->prepare('SELECT username, password, id_role  FROM ts_user WHERE username = :username AND password = :password');
    $stmt->execute(array('username' => $username, 'password' => $password));
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($row == true){      
      echo $row['id_role'];
      switch ($row['id_role']) {
        case 'value':
          # code...
          break;
        
        default:
          # code...
          break;
      }
    
    }else{
      echo "Username or Password incorrect";
    }   
  }
}
?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login</title>
  </head>
  <body>
    <h1>Login</h1>
    <?php if (isset($message)): ?>
      <p><?php echo $message; ?></p>
    <?php endif; ?>
    <form method="post" action="">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username"><br><br>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password"><br><br>
      <input type="submit" value="Log In">
    </form>
  </body>
</html>
