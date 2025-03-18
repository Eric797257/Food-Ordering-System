$(document).ready(function () {
    
    // $(document).on('click','.increment-btn', function(e){
    //     e.preventDefault();

    //     var qty = $(this).closest('.product_data').find('.input-qty').val();

    //     var value = parseInt(qty, 10);
    //     value = isNaN(value) ? 0 : value;
    //     if(value < 10)
    //     {
    //         value ++;
    //         $('.input-qty').val(value);
    //         $(this).closest('.product_data').find('.input-qty').val(value);
    //     }
    // });
    
    // $(document).on('click','.decrement-btn', function(e){
    //     e.preventDefault();

    //     var qty = $(this).closest('.product_data').find('.input-qty').val();

    //     var value = parseInt(qty, 10);
    //     value = isNaN(value) ? 0 : value;
    //     if(value > 1)
    //     {
    //         value --;
    //         $('.input-qty').val(value);
    //         $(this).closest('.product_data').find('.input-qty').val(value);
    //     }
    // });


    $(document).on('click','.addToCartBtn', function(e) {
        e.preventDefault();

        var qty = $(this).closest('.product_data').find('.input-qty').val();
        var prod_id = $(this).val();

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "prod_id": prod_id,
                "prod_qty": qty,
                "scope": "add"
            },
            success: function(response) {
                if(response == 201)
                {
                    alertify.success("Product added to cart");
                }
                else if(response == "existing")
                {
                    alertify.success("Product already in cart");
                }
                else if(response == 401)
                {
                    alertify.success("Login to continue");
                }
                else if(response == 500)
                {
                    alertify.success("Something went wrong");
                }
            }
        });
    });

    $(document).on('click','.UpdateQty', function() {

        var qty = $(this).closest('.product_data').find('.input-qty').val();
        var prod_id = $(this).closest('.product_data').find('.prodId').val();

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "prod_id": prod_id,
                "prod_qty": qty,
                "scope": "update"
            },
            success: function(response) {
                //  alert(response);
            }
        });
    });
});

document.querySelectorAll('.decrement-btn').forEach(button => {
    button.addEventListener('click', function() {
        const input = this.nextElementSibling;
        let value = parseInt(input.value);
        if (value > 0) {
            input.value = value - 1;
        }
    });
});

document.querySelectorAll('.increment-btn').forEach(button => {
    button.addEventListener('click', function() {
        const input = this.previousElementSibling;
        let value = parseInt(input.value);
        input.value = value + 1;
    });
});
