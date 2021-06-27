</div>
 
    </div>

</body>

<script>
$(document).ready(function(){
    
    $('.add-to-cart-form').on('submit', function(){
 
        var product_id = $(this).find('.product-id').text();
        var quantity = $(this).find('.cart-quantity').val();
 
        window.location.href = "add_to_cart.php?id=" + product_id + "&quantity=" + quantity;
        return false;
    });
$('.update-quantity-form').on('submit', function(){
 

 var product_id = $(this).find('.product-id').text();
 var quantity = $(this).find('.cart-quantity').val();

 window.location.href = "update_q.php?id=" + product_id + "&quantity=" + quantity;
 return false;
});

$(document).on('mouseenter', '.product-img-thumb', function(){
    var data_img_id = $(this).attr('data-img-id');
    $('.product-img').hide();
    $('#product-img-'+data_img_id).show();
}); 
});
</script>
</html>

