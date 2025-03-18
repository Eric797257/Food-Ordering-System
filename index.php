<?php

include('functions/userfunctions.php');
include('includes/header.php');
include('includes/slider.php');
?>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Trending Products</h4>
                <hr>
                
                  <div class="owl-carousel">
                    <?php
                      $trendingProducts = getAllTrending();
                      if(mysqli_num_rows($trendingProducts) > 0)
                      {
                        foreach($trendingProducts as $item)
                        {
                          ?>
                            <div class="item">
                                <a href="product-view.php?product=<?= $item['slug'];?>">
                                <div class="card shadow">
                                    <div class="card-body">
                                        <img src="uploads/<?= $item['image'];?>" alt="Product Image" height="100">
                                        <h4 class="text-center"><?= $item['name']; ?></h4>
                                    </div>
                                </div>
                                </a>
                            </div>
                          <?php
                        }
                      }
                  ?>   
                  </div>
                         
            </div>
        </div>
    </div>
</div>

<div class="py-5 bg-f2f2f2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 class="about">About Us</h4>
                <!-- <div class="underline mb-2"></div> -->
                <p>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus reprehenderit labore quas dolore molestiae eum necessitatibus maxime, eaque quibusdam, aperiam dolorum nesciunt fugit, officiis delectus placeat iure obcaecati a. Optio.
                </p>
                <p>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus reprehenderit labore quas dolore molestiae eum necessitatibus maxime, eaque quibusdam, aperiam dolorum nesciunt fugit, officiis delectus placeat iure obcaecati a. Optio.
                    <br>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus reprehenderit labore quas dolore molestiae eum necessitatibus maxime, eaque quibusdam, aperiam dolorum nesciunt fugit, officiis delectus placeat iure obcaecati a. Optio.
                </p>
                
            </div>
        </div>
    </div>
</div>

<div class="py-5 bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h4 class="text-white">E-shop</h4>
                <a href="/index.php" class="text-white"><i class="fa fa-angle-right"></i>Home</a><br>
                <a href="#" class="text-white"><i class="fa fa-angle-right"></i>About Us</a><br>
                <a href="cart.php" class="text-white"><i class="fa fa-angle-right"></i>My Cart</a><br>
                <a href="categories.php" class="text-white"><i class="fa fa-angle-right"></i>Our Menu</a>        
            </div>
            <div class="col-md-3">
                <h4 class="text-white">Address</h4>
                <p class="text-white">
                    #24, Ground Floor,
                    2nd street, xyz layout,
                    Mawlamyine.
                </p>
                <a href="tel:+919879879876" class="text-white"><i class="fa fa-phone"></i>++91 9879879879</a><br>
                <a href="mailto:abc@gmail.com" class="text-white"><i class="fa fa-envelope"></i> abc@gmail.com</a>
            </div>
            <div class="col-md-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d122445.67602752255!2d97.57678400058111!3d16.453883496555136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c2a8b3d95f5559%3A0x6fafc8c3a8dd3009!2sMawlamyine!5e0!3m2!1sen!2smm!4v1742186029952!5m2!1sen!2smm" class="w-100" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="py-2 bg-danger">
    <div class="text-center">
        <p class="mb-0 text-white">All rights reserved. Copyright @ Lynn Coder <?= date('Y')?></p>
    </div>
</div>

<?php include('includes/footer.php'); ?>
<script>
    $(document).ready(function() {
        $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
})
    });
</script>