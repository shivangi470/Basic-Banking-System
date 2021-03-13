<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js">
        <link rel="stylesheet" href="reg-style.css">
      <title>

      </title>
    </head>
    <body>
        
     <div class="inner">
         <div class="photo">
            <img src="img/reg.svg">

         </div>
         <div class="user-form">
            <h1>Welcome!</h1>
            <form action="" method="POST">
                <i class="fas fa-user icon"></i>
                <input type="text" placeholder="Your name" name="username">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Your e-mail" name="email">
                <i class="fas fa-address-book"></i>
                <input type="text" placeholder="Account no." name="Accno">
                <i class="fas fa-dollar-sign"></i>
                <input type="text" placeholder="Amount in Rs." name="amount">
                <div class="action-btn">
                    <button type="submit" class="btn" name="submit" >Create Account</button>
                </div>
            </form>
         </div>
        </div>

    </body>
</html>

 <?php
include 'connection.php';
if(isset($_POST['submit']))
{
    $name=$_POST['username'];
    $email=$_POST['email'];
    $Accno =$_POST['Accno'];
    $amount =$_POST['amount'];

    $insertquery = "insert into reg(username,email,Accno,amount)values('$name', '$email', '$Accno','$amount' )";

    $check=mysqli_query($con, $insertquery );
    if($check){
        ?>
        <script>
            alert("registration successfully");
        </script>
        <?php
       

    }
    else{
        ?>
         <script>
            alert("registration unsuccessfully");
        </script>
        <?php
    }
}
?>
