


document.getElementById("addCart").onclick = function() {addCart()};
document.getElementById("addProduct").onclick = function() {addProduct()};
document.getElementById("editProduct").onclick = function() {editProduct()};
document.getElementById("removeItem").onclick = function (){removeItem};
document.getElementById("removeProduct").onclick = function (){removeProduct};
document.getElementById("loginError").onclick = function (){loginError};

function loginError(){
    document.getElementById("loginError").innerHTML = alert("Sepete ürün eklemek için giriş yapmanız gerekiyor. Otomatik yönlendirileceksiniz !");
}

function addCart() {
    document.getElementById("addCart").innerHTML = alert("Ürün başarıyla sepete eklendi!");
}

function addProduct() {
    document.getElementById("addProduct").innerHTML = alert("Ürün başarıyla eklendi!");
}

function editProduct() {
    document.getElementById("editProduct").innerHTML = alert("Ürün başarıyla güncellendi!");
}

function removeItem(){
    document.getElementById("removeItem").innerHTML = alert("Ürün başarıyla kaldırıldı!");
}

function removeProduct(){
    document.getElementById("removeProduct").innerHTML = alert("Ürün başarıyla silindi!");
}

