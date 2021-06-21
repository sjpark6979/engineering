package model;

public class CartDTO {
String membId;
String prodNo;
String catNum;
String cartQty;
String prodPrice;
public String getMembId() {
	return membId;
}
public void setMembId(String membId) {
	this.membId = membId;
}
public String getProdNo() {
	return prodNo;
}
public void setProdNo(String prodNo) {
	this.prodNo = prodNo;
}
public String getCatNum() {
	return catNum;
}
public void setCatNum(String catNum) {
	this.catNum = catNum;
}
public String getCartQty() {
	return cartQty;
}
public void setCartQty(String cartQty) {
	this.cartQty = cartQty;
}
public String getCartPrice() {
	return prodPrice;
}
public void setCartPrice(String prodPrice) {
	this.prodPrice = prodPrice;
}

}
