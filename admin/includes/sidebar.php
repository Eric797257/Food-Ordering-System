<?php
// ob_start();
$page = substr($_SERVER['SCRIPT_NAME'], strrpos($_SERVER['SCRIPT_NAME'],"/")+1);
?>
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-radius-lg fixed-start ms-2  bg-white my-2" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-dark opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand px-4 py-3 m-0" target="_blank">
        
        <span class="ms-1 text-sm text-dark">Food King</span>
      </a>
    </div>
    <hr class="horizontal dark mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "index.php"?'active bg-gradient-dark text-white':''; ?>" href="index.php">
            <i class="material-symbols-rounded opacity-5">dashboard</i>
            <span class="nav-link-text ms-1" >Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "category.php"?'active bg-gradient-dark text-white':''; ?>" href="category.php">
            <i class="material-symbols-rounded opacity-5">table_view</i>
            <span class="nav-link-text ms-1">All Categories</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "add-category.php"?'active bg-gradient-dark text-white':''; ?>" href="add-category.php">
            <i class="material-symbols-rounded opacity-5">Add</i>
            <span class="nav-link-text ms-1">Add Category</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "products.php"?'active bg-gradient-dark text-white':''; ?>" href="products.php">
            <i class="material-symbols-rounded opacity-5">table_view</i>
            <span class="nav-link-text ms-1">All Products</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "add-product.php"?'active bg-gradient-dark text-white':''; ?>" href="add-product.php">
            <i class="material-symbols-rounded opacity-5">Add</i>
            <span class="nav-link-text ms-1">Add Products</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "owners.php"?'active bg-gradient-dark text-white':''; ?>" href="owners.php">
            <i class="material-symbols-rounded opacity-5">table_view</i>
            <span class="nav-link-text ms-1">All Owners</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "add-restaurant_owner.php"?'active bg-gradient-dark text-white':''; ?>" href="add-restaurant_owner.php">
            <i class="material-symbols-rounded opacity-5">Add</i>
            <span class="nav-link-text ms-1">Add Owner</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "restaurants.php"?'active bg-gradient-dark text-white':''; ?>" href="restaurants.php">
            <i class="material-symbols-rounded opacity-5">table_view</i>
            <span class="nav-link-text ms-1">All Restaurants</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "add-restaurant.php"?'active bg-gradient-dark text-white':''; ?>" href="add-restaurant.php">
            <i class="material-symbols-rounded opacity-5">Add</i>
            <span class="nav-link-text ms-1">Add Restaurants</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "delivers.php"?'active bg-gradient-dark text-white':''; ?>" href="delivers.php">
            <i class="material-symbols-rounded opacity-5">table_view</i>
            <span class="nav-link-text ms-1">All Delivers</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "add-deliver.php"?'active bg-gradient-dark text-white':''; ?>" href="add-deliver.php">
            <i class="material-symbols-rounded opacity-5">Add</i>
            <span class="nav-link-text ms-1">Add deliver</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark <?= $page == "orders.php"?'active bg-gradient-dark text-white':''; ?>" href="orders.php">
            <i class="material-symbols-rounded opacity-5">table_view</i>
            <span class="nav-link-text ms-1">Orders</span>
          </a>
        </li>
        
        <!-- <li class="nav-item">
          <a class="nav-link text-dark" href="../pages/notifications.html">
            <i class="material-symbols-rounded opacity-5">notifications</i>
            <span class="nav-link-text ms-1">Notifications</span>
          </a>
        </li>
        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs text-dark font-weight-bolder opacity-5">Account pages</h6>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="../pages/profile.html">
            <i class="material-symbols-rounded opacity-5">person</i>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="../pages/sign-in.html">
            <i class="material-symbols-rounded opacity-5">login</i>
            <span class="nav-link-text ms-1">Sign In</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="../pages/sign-up.html">
            <i class="material-symbols-rounded opacity-5">assignment</i>
            <span class="nav-link-text ms-1">Sign Up</span>
          </a>
        </li> -->
      </ul>
    </div>
    <div class="sidenav-footer position-absolute w-100 bottom-0 ">
      <div class="mx-3">
        <a class="btn bg-gradient-dark w-100" href="../logout.php" type="button">Logout</a>
      </div>
    </div>
  </aside>