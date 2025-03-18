<?php

include('../middleware/adminMiddleware.php');
include('includes/header.php');


?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Add Restaurant</h4>
                </div>
                <div class="card-body">
                    <form action="code.php" method="POST">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="mb-0">Select Owner</label>
                                <select name="owner_id" class="form-select mb-2">
                                    <option selected>Select Owner</option>
                                    <?php
                                    $owners = getAll("owners");
                                    if (mysqli_num_rows($owners) > 0) {
                                        foreach ($owners as $item) {
                                    ?>
                                            <option value="<?= $item['id']; ?>"><?= $item['owner_name']; ?></option>
                                    <?php
                                        }
                                    } else {
                                        echo "No restaurant available.";
                                    }
                                    ?>

                                </select>
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">Restaurant Name</label>
                                <input type="text" required name="name" placeholder="Enter Restaurant Name" class="form-control mb-2">
                            </div>
                            <div class="col-md-12">
                                <label class="mb-0">Address</label>
                                <textarea rows="3" required name="address" placeholder="Enter address" class="form-control mb-2"></textarea>
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">Phone No</label>
                                <input type="text" required name="phone" placeholder="Enter Phone No" class="form-control mb-2">
                            </div>
                
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="mb-0">Status</label>
                                    <input type="checkbox" name="status">
                                </div>
                            </div>
                            
                            

                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="add_restaurant_btn">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>