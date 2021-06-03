
$(document).ready(function (){
    $(".minusButton").on("click",function (evt){
        evt.preventDefault();
        product.id = $(this).attr("pid");
        qtyInput = $("#qty" + product.id);

        newQty = parseInt(qtyInput.val()) -1 ;
        if (newQty > 0) qtyInput.val(newQty);
    });
});

function addCart(){
    quantity = $("#qty" + product.id).val();

    url = contextPath + "addToCart" + product.id + "/" + quantity;
}