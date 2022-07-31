package com.orders;

public class Orders {
	private int orderID;
	private String supplyID;
	private String orderTitle;
	private String supplierName;
	private String orderDate;
	private String bookName;
	private String noofBooks;
	
	public Orders(int orderID, String supplyID, String orderTitle, String supplierName, String orderDate, String bookName,
			String noofBooks) {
		
		this.orderID = orderID;
		this.supplyID = supplyID;
		this.orderTitle = orderTitle;
		this.supplierName = supplierName;
		this.orderDate = orderDate;
		this.bookName = bookName;
		this.noofBooks = noofBooks;
	}

	public int getOrderID() {
		return orderID;
	}

	public String getSupplyID() {
		return supplyID;
	}

	public String getorderTitle() {
		return orderTitle;
	}

	public String getsupplierName() {
		return supplierName;
	}

	public String getorderDate() {
		return orderDate;
	}

	public String getbookName() {
		return bookName;
	}

	public String getnoofBooks() {
		return noofBooks;
	}
}
