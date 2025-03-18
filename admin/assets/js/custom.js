$(document).ready(function() {
    
    $(document).on('click', '.delete_product_btn', function(e) {
        e.preventDefault();

        var id = $(this).val();
        // alert(id);

        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    method: "POST",
                    url: "code.php",
                    data: {
                        'product_id':id,
                        'delete_product_btn' : true
                },
                success: function(response){
                    // console.log(response);
                    if(response == 200)
                    {
                        swal("Success!", "Product Deleted Successfully", "success");
                        $("#products_table").load(location.href + "#products_table");
                    }
                    else if(response == 500)
                    {
                        swal("Error!", "Something went wrong!", "error");
                    }
                }
            });
              
            }
          });
        });

    $(document).on('click', '.delete_category_btn', function(e){
        e.preventDefault();
    
            var id = $(this).val();
    
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
              })
              .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        method: "POST",
                        url: "code.php",
                        data: {
                            'category_id':id,
                            'delete_category_btn' : true
                    },
                    success: function(response){
                        if(response == 200)
                        {
                            swal("Success!", "Category Deleted Successfully", "success");
                            $("#category_table").load(location.href + "#category_table");
                        }
                        else if(response == 500)
                        {
                            swal("Error!", "Something went wrong!", "error");
                        }
                    }
                });
                  
                }
              });

        });

    $(document).on('click', '.delete_restaurant_owner_btn', function(e){
        e.preventDefault();
    
            var id = $(this).val();
    
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
              })
              .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        method: "POST",
                        url: "code.php",
                        data: {
                            'owner_id':id,
                            'delete_restaurant_owner_btn' : true
                    },
                    success: function(response){
                        if(response == 200)
                        {
                            swal("Success!", "Owner Deleted Successfully", "success");
                            $("#owner_table").load(location.href + "#owner_table");
                        }
                        else if(response == 500)
                        {
                            swal("Error!", "Something went wrong!", "error");
                        }
                    }
                });
                  
                }
              });

        });   
    
    $(document).on('click', '.delete_restaurant_btn', function(e) {
        e.preventDefault();

        var id = $(this).val();

        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    method: "POST",
                    url: "code.php",
                    data: {
                        'restaurant_id':id,
                        'delete_restaurant_btn' : true
                },
                success: function(response){
                    if(response == 200)
                    {
                        swal("Success!", "Restaurant Deleted Successfully", "success");
                        $("#restaurants_table").load(location.href + "#restaurants_table");
                    }
                    else if(response == 500)
                    {
                        swal("Error!", "Something went wrong!", "error");
                    }
                }
            });
              
            }
          });
        });
    
    $(document).on('click', '.delete_deliver_btn', function(e) {
            e.preventDefault();
    
            var id = $(this).val();
    
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
              })
              .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        method: "POST",
                        url: "code.php",
                        data: {
                            'deliver_id':id,
                            'delete_deliver_btn' : true
                    },
                    success: function(response){
                        if(response == 200)
                        {
                            swal("Success!", "Deliver Deleted Successfully", "success");
                            $("#deliver_table").load(location.href + "#deliver_table");
                        }
                        else if(response == 500)
                        {
                            swal("Error!", "Something went wrong!", "error");
                        }
                    }
                });
                  
                }
              });
        });
   
});