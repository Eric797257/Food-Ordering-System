$(document).on('click','.deleteItem', function() {
    var cart_id = $(this).val();

    $.ajax({
        method: "POST",
        url: "functions/handlecart.php",
        data: {
            "cart_id": cart_id,
            
            "scope": "delete"
        },
        success: function(response) {

            if(response == 200)
            {
                alertify.success("Item deleted successful.");
                $('#mycart').load(location.href + "#mycart");
                location.reload();

                // $('#mycart').load('/cart #mycart');

            }
            else {
                alertify.success(response);
            }
        }
    });

});