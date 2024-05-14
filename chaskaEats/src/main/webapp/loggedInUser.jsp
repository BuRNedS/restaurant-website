<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order On Table</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom styles can be added here */
        .navbar-brand {
            display: inline-block;
            position: relative;
            top: 300px;
            z-index: 1;
            left: 420px;
            font-size: xx-large;
        }

        body{
            background-color:#d3b7a2; 
            background-image: url(img/singup_bg.png);  
        }

        .bg-color{
            background-color: rgb(37, 12, 1);
        }
        
        .navbar{
            height: 60px;
        }
        @media screen and (max-width:320px){
            .navbar-brand {
            position: relative;
            top: 80px;
            z-index: 1;
            left: 90px;
            font-size:x-large;
        }    
        }
        
        .card {
    width: 200px;
    border: 1px solid #ccc;
    border-radius: 8px;
    margin: 10px;
    padding: 10px;
    float: left;
  }
  .food-image {
    width: 100%;
    height: auto;
  }
  .btn {
    cursor: pointer;
    background-color: #744646;
  }
  #cart-modal {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 8px;
    z-index: 9999;
  } 
    </style>
</head>

<body >
    <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-color">
            <div class="container">
              <img src="img/logo22.png" alt="Chaska" class="navbar-brand">
                <!-- Navbar links -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Hello Mr.</a>
                            
                        </li>
                        <!-- Add other navbar links here -->
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main role="main">

        <!-- Carousel -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="img/aesthetic.jpeg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/paneer.jpeg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/restro-bg.jpeg" alt="Third slide">
                </div>
                <div class="about_data ">
                    About
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
        </div>
        
        <div>
           <center>
            <h1 style="color= #744646;">
            Hello Mr. Foodie!
            </h1>
            <h1>
            How can we make your tummy full today?
            </h1>
            </center>
        </div>

        <!-- About Us Section -->
        <section class="container mt-5">
            <div class="row">
                <div class="col-md-6">
      
<!-- Food Cards -->
<div id="food-cards">
  <div class="card">
    <img class="food-image" src="img/paneer.jpeg" alt="Food 1">
    <p>Paneer</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/noodles.jpeg" alt="Food 2">
    <p>Noodles</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/paneer.jpeg" alt="Food 1">
    <p>Paneer</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/noodles.jpeg" alt="Food 2">
    <p>Noodles</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/paneer.jpeg" alt="Food 1">
    <p>Paneer</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/noodles.jpeg" alt="Food 2">
    <p>Noodles</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/paneer.jpeg" alt="Food 1">
    <p>Paneer</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/noodles.jpeg" alt="Food 2">
    <p>Noodles</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/paneer.jpeg" alt="Food 1">
    <p>Paneer</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/noodles.jpeg" alt="Food 2">
    <p>Noodles</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/paneer.jpeg" alt="Food 1">
    <p>Paneer</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <div class="card">
    <img class="food-image" src="img/noodles.jpeg" alt="Food 2">
    <p>Noodles</p>
    <div>
      <span class="btn add-to-cart">+</span>
      <span class="btn remove-from-cart">-</span>
    </div>
  </div>
  <!-- Add more cards here -->
</div>

<!-- Cart Button -->
<button class="btn" id="cart-button" onclick="showCart()">Cart</button>

<!-- Cart Modal -->
<div id="cart-modal">
  <h2>Cart Items</h2>
  <ul id="cart-items"></ul>
  <button class="btn" onclick="hideCart()">Close</button>
</div>

<script>
  // Array to store cart items
  var cartItems = [];

  // Function to add item to cart
  function addToCart() {
    alert("This item has been added to cart !");
    var foodName = this.parentNode.previousElementSibling.innerText;
    cartItems.push(foodName);
    updateCart();
  }

  // Function to remove item from cart
  function removeFromCart() {
    alert("Oops Item removed !");
    var foodName = this.parentNode.previousElementSibling.innerText;
    var index = cartItems.indexOf(foodName);
    if (index !== -1) {
      cartItems.splice(index, 1);
    }
    updateCart();
  }

  // Function to update cart display
  function updateCart() {
    var cartList = document.getElementById("cart-items");
    cartList.innerHTML = "";
    cartItems.forEach(function(item) {
      var li = document.createElement("li");
      li.textContent = item;
      cartList.appendChild(li);
    });
  }

  // Function to display cart
  function showCart() {
    var modal = document.getElementById("cart-modal");
    modal.style.display = "block";
  }

  // Function to hide cart
  function hideCart() {
    var modal = document.getElementById("cart-modal");
    modal.style.display = "none";
  }

  // Add event listeners to + and - buttons
  var addToCartButtons = document.querySelectorAll('.add-to-cart');
  addToCartButtons.forEach(function(button) {
    button.addEventListener('click', addToCart);
  });

  var removeFromCartButtons = document.querySelectorAll('.remove-from-cart');
  removeFromCartButtons.forEach(function(button) {
    button.addEventListener('click', removeFromCart);
  });
</script>
                </div>
            </div>
        </section>

    </main>

    <footer class="bg-color text-white text-center py-3">
        <p>&copy; 2024 Chaska. All Rights Reserved.</p>
    </footer>

    <!-- JavaScript dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>