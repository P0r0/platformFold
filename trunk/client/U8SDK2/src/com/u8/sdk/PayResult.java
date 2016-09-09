package com.u8.sdk;

public class PayResult {
	private String orderID;
	private String productID;
	private String productName;
	private String extension;
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	
	public String getOrderID() {
		return orderID;
	}
	
}
