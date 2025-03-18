<?php
include('../middleware/adminMiddleware.php');
include('includes/header.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <?php
              if(isset($_GET['id']))
              {
                $id = $_GET['id'];
                $restaurant_owner = getByID("owners", $id);
                
                if(mysqli_num_rows($restaurant_owner) > 0)
                {
                    $data = mysqli_fetch_array($restaurant_owner);
                    ?>
                  <div class="card">
                    <div class="card-header">
                       <h4>Edit Restaurant Owners</h4>
                    </div>
                    <div class="card-body">
                    <form action="code.php" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="hidden" name="owner_id" value="<?= $data['id'] ?>">
                                <label for="">Owner Name</label>
                                <input type="text" name="owner_name" value="<?= $data['owner_name'] ?>" placeholder="Enter Owner name" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label for="">Email</label>
                                <input type="email" name="email" value="<?= $data['email'] ?>" placeholder="Enter email" class="form-control">
                            </div>
                            <div class="col-md-12">
                                <label for="">Password</label>
                                <input type="password" name="password" value="<?= $data['password'] ?>" placeholder="Enter password" class="form-control">
                            </div>
                            
                            <div class="col-md-12">
                                <label for="">Phone Number</label>
                                <input type="number" name="phone" value="<?= $data['phone'] ?>" placeholder="Enter ph no" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label for="">Status</label>
                                <input type="checkbox" <?= $data['status'] ? "checked": ""?> name="status">
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="update_restaurant_owner_btn">Update</button>
                            </div>
                        </div>
                    </form>
                    </div>
                  </div>  
                  <?php 
                }
                else{
                    echo "Restaurant Owners not found";
                }
              }
              else{
                echo "Id missing from url";
              }
            ?>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>