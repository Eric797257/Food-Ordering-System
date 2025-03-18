<?php

include('../middleware/adminMiddleware.php');  
include('includes/header.php'); 

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Restaurant Owners</h4>
                </div>
                <div class="card-body" id="owner_table">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Owner Name</th>
                                <th>Email</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                              $restaurant_owner = getAll("owners");

                              if(mysqli_num_rows($restaurant_owner) > 0)
                              {
                                 foreach($restaurant_owner as $item)
                                 {
                                    ?>
                                    <tr>
                                        <td><?= $item['id'];?></td>
                                        <td><?= $item['owner_name'];?></td>
                                        <td><?= $item['email'];?></td>
                                        <td><?= $item['status'] == '0' ? "Visible" : "Hidden"?></td>
                                        <td>
                                            <a href="edit-restaurant_owner.php?id=<?= $item['id'];?>" class="btn btn-primary">Edit</a>
                                            <button type="button" class="btn-sm btn btn-danger delete_restaurant_owner_btn" value="<?=$item['id'];?>" >Delete</button>
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