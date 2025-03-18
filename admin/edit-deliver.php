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
                $deliver = getByID("delivery_person", $id);
                
                if(mysqli_num_rows($deliver) > 0)
                {
                    $data = mysqli_fetch_array($deliver);
                    ?>
                  <div class="card">
                    <div class="card-header">
                       <h4>Edit Category</h4>
                    </div>
                    <div class="card-body">
                    <form action="code.php" method="POST">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="hidden" name="deliver_id" value="<?= $data['id'] ?>">
                                <label for="">Name</label>
                                <input type="text" name="name" value="<?= $data['name'] ?>" placeholder="Enter deliver name" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label for="">Vehicle Details</label>
                                <input type="text" name="vehicle_details" value="<?= $data['vehicle_details'] ?>" placeholder="Enter vehicle details" class="form-control">
                            </div>
                            <div class="col-md-12">
                                <label for="">Ph No</label>
                                <input type="text" name="ph_no" value="<?= $data['ph_no'] ?>" placeholder="Enter Phone No" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label for="">Status</label>
                                <input type="checkbox" <?= $data['status'] ? "checked": ""?> name="status">
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="update_deliver_btn">Update</button>
                            </div>
                        </div>
                    </form>
                    </div>
                  </div>  
                  <?php 
                }
                else{
                    echo "Deliver not found";
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