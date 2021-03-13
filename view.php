<?php

?>

<!doctype html>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="view-style.css">
    

    </head>

    <body>
        <div class="min-div">
            <h1> List of All Customer </h1>
        </div>
        <div class="center-div">
                <table class="table">
                 <thead class="table-dark">
                   <tr>
                     <th scope="col">#</th>
                     <th scope="col">Name</th>
                     <th scope="col">Email</th>
                     <th scope="col">Acc no.</th>
                     <th scope="col">Amount</th>
                     <th scope="col">Operation</th>
                   </tr>
                 </thead>
                 <tbody>
                     <?php
                     
                     include 'connection.php';
                     $selectquery =  "select *from reg";
                     $query =mysqli_query($con,$selectquery);
                     $nums = mysqli_num_rows($query);
                     while($res = mysqli_fetch_array($query))
                     {

                     ?>
                 <tr>
                   <td><?php echo $res['id'];?> </td>
                   <td><?php echo $res['username'];?> </td>
                   <td><?php echo $res['email'];?> </td>
                   <td><?php echo $res['accno'];?> </td>
                   <td><?php echo $res['amount'];?> </td>
                   <td><a href="transfer.php?id=<?php echo $res['id'] ;?>"> <button type="button" class="btn btn-dark"> Transact</button></a></td> 
                    </tr>
                 </tr>

                  <?php
                     }

                    ?>
                 
                 </tbody>
            </table>

     </div>


</body>

</html>