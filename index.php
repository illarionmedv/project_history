<?php
include "db.php";
$query = mysqli_query( $con,"SELECT * FROM days");
$posts = array();

if($query) {
    while($row = mysqli_fetch_assoc($query)){
        $posts[] = $row;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Project History</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="icon" href="favicon.png" type="image/x-icon"/>
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
  <div class="container">
      <h1>My project history</h1>
      <p>Current time: <span class="toolbar"></span> </p>
     <ul>
        <?php foreach($posts as $post):?>
         <li>
            <span></span>
            <div class="row advanced animated slideInRight">
            <div class="col-md-6">
             <h3><?= $post['name']?></h3>
             <div class="title"><b>Title:</b> <?= $post['title']?></div>
             <div class="info"><b>Info:</b> <?= $post['info']?></div>
             <div class="type"><b>Type:</b> <?= $post['type']?></div>
             </div>
             <div class="col-md-6"><img src="images/q.jpg" class="img-fluid"></div>
             </div>
             <div class="time">
                 <span><?= $post['time_begin']?></span>
                 <span><?= $post['time_end']?></span>
             </div>
         </li>
         <?php endforeach ?>
     </ul>
  </div>
  <script src="js/app.js"></script>
  <script src="js/jquery-3.2.1.min%20(1).js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script>
   function show(){
    $.ajax({
          url: "ajaxTime.php",
          cache:false,
          success:function(html){
              $('.toolbar').html(html);
          }
      });   
   }
  </script>
  </body>
</html>