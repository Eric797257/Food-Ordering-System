<?php
include('../middleware/adminMiddleware.php');
include('includes/header.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
            <div class="card-header">
                <h4>Add Restaurant Owner</h4>
            </div>
            <div class="card-body">
                <form action="code.php" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="">Owner Name</label>
                            <input type="text" required name="owner_name" placeholder="Enter owner name" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="">Email</label>
                            <input type="email" required name="email" placeholder="Enter email" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="">Password</label>
                            <input type="password" required name="password" placeholder="Enter password" class="form-control">
                        </div>
                        <div class="col-md-12">
                            <label for="">Ph no</label>
                            <input type="number" required name="ph_no" placeholder="Enter ph_no" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="">Status</label>
                            <input type="checkbox" name="status">
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary" name="add_restaurant_owner_btn">Save</button>
                        </div>
                    </div>
                </form>
            </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>