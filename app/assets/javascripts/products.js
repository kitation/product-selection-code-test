$(document).ready(function() {
    // load items - for example's sake have customerid as constant
    var CUSTOMER_ID = 2;
    $('#customer_id').val(CUSTOMER_ID);

    // should probably have the URL somewhere else (erb file, html data etc)
    $.ajax("/products/sports", { data : {'customer_id': CUSTOMER_ID}}).done(function(response) {
        $('#sports').html(response);
    }).fail(function(response) {
        // an appropiate error message should go here,or an empty basket
        console.log(response);
    });

    $('body').on('change', '.product-item > input' , function() {
        item = $(this);
        val = item.val();
        id = item.attr('id');
        if (item.is(":checked")) {
            $('#basket').append("<div class='product-item' id= 'selected_" + id + "'>" + val + "</div>");
            $('form').append("<input type='hidden' name='products[]' id='" + id +"' value='" + id +"' />")
        }
        else {
            $('#basket').find("#selected_" + id).remove();
            $('form').find("#" + id).remove();
        }
    });
})