<?php
include('functions/userfunctions.php');
include('includes/header.php');

?>
<div class="py-3 bg-primary">
    <div class="container">
       <a class="text-white" href="index.php">
          Home / 
       </a> 
       <a class="text-white" href="index.php">
          Menu 
       </a>
    </div>
</div>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Our Menu</h1>
                <hr>
                <div class="row">
                    <?php
                    $categories = getAllActive("categories");

                    if (mysqli_num_rows($categories) > 0) {
                        foreach ($categories as $item) 
                        {
                    ?>
                        <div class="col-md-3 mb-2">
                            <a href="products.php?category=<?= $item['slug'];?>">
                            <div class="card shadow">
                                <div class="card-body">
                                    <img src="uploads/<?= $item['image'];?>" alt="Category Image" width="100" height="80">
                                    <h4 class="center"><?= $item['name']; ?></h4>
                                </div>
                            </div>
                            </a>
                        </div>
                    <?php
                        }
                    } else {
                        echo "No data available";
                    }
                    ?>
                </div>
                
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>