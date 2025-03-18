<?php 
include('../middleware/adminMiddleware.php'); 
include('includes/header.php'); 

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Restaurants</h4>
                </div>
                <div class="card-body" id="restaurants_table">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Status</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                              $restaurants = getAll("restaurants");

                              if(mysqli_num_rows($restaurants) > 0)
                              {
                                 foreach($restaurants as $item)
                                 {
                                    ?>
                                    <tr>
                                        <td><?= $item['id'];?></td>
                                        <td><?= $item['name'];?></td>
                                        <td><?= $item['address'];?></td>
                                        <td><?= $item['phone'];?></td>
                                        <td><?= $item['status'] == '0' ? "Visible" : "Hidden"?></td>
                                        <td>
                                            <a href="edit-restaurant.php?id=<?= $item['id'];?>" class="btn-sm btn btn-primary">Edit</a>
                                        </td>
                                        <td>                                           
                                            <button type="button" class="btn-sm btn btn-danger delete_restaurant_btn" value="<?= $item['id'];?>" >Delete</button> 
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