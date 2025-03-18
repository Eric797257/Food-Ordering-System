<?php 
include('../middleware/adminMiddleware.php'); 
include('includes/header.php'); 

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Deliver</h4>
                </div>
                <div class="card-body" id="deliver_table">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Vehicle Details</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                              $deliver = getAll("delivery_person");

                              if(mysqli_num_rows($deliver) > 0)
                              {
                                 foreach($deliver as $item)
                                 {
                                    ?>
                                    <tr>
                                        <td><?= $item['id'];?></td>
                                        <td><?= $item['name'];?></td>
                                        <td><?= $item['vehicle_details'];?></td>
                                        <td><?= $item['ph_no'];?></td>          
                                        <td><?= $item['status'] == '0' ? "Visible" : "Hidden"?></td>
                                        <td>
                                            <a href="edit-deliver.php?id=<?= $item['id'];?>" class="btn btn-primary">Edit</a>
                                            <button type="button" class="btn-sm btn btn-danger delete_deliver_btn" value="<?= $item['id'];?>" >Delete</button> 
                                        </td>
                                    </tr>
                                    <?php
                                 }
                              }
                              else
                              {
                                echo "No records found";
                              }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>