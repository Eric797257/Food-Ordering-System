<?php
include('../middleware/adminMiddleware.php');
include('includes/header.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <?php
            if (isset($_GET['id'])) {
                $id = $_GET['id'];
                $restaurant = getByID("restaurants", $id);

                if (mysqli_num_rows($restaurant) > 0) {
                    $data = mysqli_fetch_array($restaurant);
                    ?>
                        <div class="card">
                        <div class="card-header">
                            <h4>Edit Restaurant</h4>
                            <a href="restaurants.php" class="btn btn-primary float-end">Back</a>
                        </div>
                        <div class="card-body">
                            <form action="code.php" method="POST">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label class="mb-0">Select Owner</label>
                                        <select name="owner_id" class="form-select mb-2">
                                            <option selected>Select Owner</option>
                                            <?php
                                            $owner = getAll("owners");
                                            if (mysqli_num_rows($owner) > 0) {
                                                foreach ($owner as $item) {
                                            ?>
                                                    <option value="<?= $item['id']; ?>" <?= $data['owner_id'] == $item['id']? 'selected' : ''?>> <?= $item['owner_name']; ?></option>
                                            <?php
                                                }
                                            } else {
                                                echo "No restaurant available.";
                                            }
                                            ?>

                                        </select>
                                    </div>
                                    <input type="hidden" name="restaurant_id" value="<?= $data['id'];?>">
                                    <div class="col-md-6">
                                        <label class="mb-0">Restaurant Name</label>
                                        <input type="text" required name="name" value="<?= $data['name'];?>" placeholder="Enter Name" class="form-control mb-2">
                                    </div> 
                                    <div class="col-md-12">
                                        <label class="mb-0">Address</label>
                                        <textarea rows="3" required name="address" placeholder="Enter address" class="form-control mb-2"><?= $data['address'];?></textarea>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="mb-0">Ph No</label>
                                        <input type="text" required name="phone" value="<?= $data['phone'];?>" placeholder="Enter slug" class="form-control mb-2">
                                    </div>
                                    
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                            <label class="mb-0">Status</label>
                                            <input type="checkbox" name="status" <?= $data['status'] == '0' ? '': 'checked'?>>
                                        </div>
                                        
                                    </div>
                                    

                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary" name="update_restaurant_btn">Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        </div>
                    <?php
                }
                else
                {
                    echo "Restaurant Not found for given id.";
                }
            } 
            else {
                echo "Id missing from url";
            }
            ?>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>