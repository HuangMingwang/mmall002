//添加购物车
function addCart(productId,price){
    let stockStr = $("#stock").text();
    let stock = parseInt(stockStr);
    if(stock == 0){
        alert("库存不足！");
        return false;
    }
    let quantity = $("#quantity").val();
    window.location.href="/cart/add/"+productId+"/"+price+"/1";
}