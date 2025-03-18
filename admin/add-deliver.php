<?php
include('../middleware/adminMiddleware.php');
include('includes/header.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
            <div class="card-header">
                <h4>Add Deliver</h4>
            </div>
            <div class="card-body">
                <form action="code.php" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <label for="">Name</label>
                            <input type="text" name="name" placeholder="Enter deliver name" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="">Vehicle Details</label>
                            <input type="text" name="vehicle_details" placeholder="Enter vehicle" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label for="">Ph No</label>
                            <input type="number" name="ph_no" placeholder="Enter phone" class="form-control">
                        </div>
                        <div class="col-md-12">
                            <label for="">Status</label>
                            <input type="checkbox" name="status">
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary" name="add_deliver_btn">Save</button>
                        </div>
                    </div>
                </form>
            </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>