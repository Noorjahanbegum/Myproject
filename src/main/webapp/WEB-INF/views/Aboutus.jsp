<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
  
  </style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <h3>ABOUT US</h3>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Buy Best Watches At Watch Shop</h1>
<p>Watches are stylish and timeless fashion accessories that deserve a special place in every woman’s closet. From divas that prefer investing in a handful of designer watches for women to ones who like to wear a different watch with every outfit, every woman loves to adorn her wrist with beautiful watches. Buy trendy watches for women online at Snapdeal and add glam quotient to your outfits! and also choose the one that matches the watches for men as well.
 </p>
      <p>Women who like less of glitter and are inclined towards classic women watches may checkout leather strap watches in colours such as brown, black, beige, and the like. These watches are easy to maintain and versatile so that you can wear them to a variety of occasions with ease.
      </p>
      
      
      <p>Watch Shop: Designer Watches for Women at Best Prices</p>
<p>So, get started and buy your favourite women’s watches online today on India’s largest online marketplace.
</p>
    </div>
    <div class="col-sm-2 sidenav">
     <div class="item">
        <img src="resources/image5.jpg" width="140" height="144">
      </div><br><br>
      <div class="item">
       
      </div>
      <div class="item">
        <img src="resources/image6.jpg" alt="Flower" width="140" height="144">
      </div>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
