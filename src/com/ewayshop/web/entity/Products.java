package com.ewayshop.web.entity;

import java.util.Date;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 
 * @author shafi
 * 
 *         ProductID int(12) PK AI ProductSKU varchar(45) ProductName
 *         varchar(100) ProductPrice float ProductWeight float ProductCartDesc
 *         varchar(250) ProductShortDesc varchar(1000) ProductLongDesc text
 *         ProductThumb varchar(100) ProductImage varchar(100) ProductUpdateDate
 *         timestamp ProductStock float ProductLocation varchar(250) categoryId
 *         int(11)
 * 
 *
 * 
 * 
 */
@Entity
@Component("product")
public class Products {

	private int ProductID;
	@Autowired
	private String ProductSKU;
	@NotBlank
	private String ProductName;
	
	private float ProductPrice;
	
	private float ProductWeight;
	@NotBlank
	private String ProductCartDesc;
	@NotBlank
	private String ProductShortDesc;
	@NotBlank
	private String ProductLongDesc;
	@NotBlank
	private String ProductThumb;
	@NotBlank
	private String ProductImage;
	private Date ProductUpdateDate;
	
	private int ProductStock;
	@NotBlank
	private String ProductLocation;
	private int CategoryId;

	public Products() {
		// TODO Auto-generated constructor stub
	}

	public Products(int productID, String productSKU, String productName, float productPrice, float productWeight,
			String productCartDesc, String productShortDesc, String productLongDesc, String productThumb,
			String productImage, Date productUpdateDate, int productStock, String productLocation, int categoryId) {
		super();
		ProductID = productID;
		ProductSKU = productSKU;
		ProductName = productName;
		ProductPrice = productPrice;
		ProductWeight = productWeight;
		ProductCartDesc = productCartDesc;
		ProductShortDesc = productShortDesc;
		ProductLongDesc = productLongDesc;
		ProductThumb = productThumb;
		ProductImage = productImage;
		ProductUpdateDate = productUpdateDate;
		ProductStock = productStock;
		ProductLocation = productLocation;
		this.CategoryId = categoryId;
	}

	public int getProductID() {
		return ProductID;
	}

	public void setProductID(int productID) {
		ProductID = productID;
	}

	public String getProductSKU() {
		return ProductSKU;
	}

	public void setProductSKU(String productSKU) {
		ProductSKU = productSKU;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public float getProductPrice() {
		return ProductPrice;
	}

	public void setProductPrice(float productPrice) {
		ProductPrice = productPrice;
	}

	public float getProductWeight() {
		return ProductWeight;
	}

	public void setProductWeight(float productWeight) {
		ProductWeight = productWeight;
	}

	public String getProductCartDesc() {
		return ProductCartDesc;
	}

	public void setProductCartDesc(String productCartDesc) {
		ProductCartDesc = productCartDesc;
	}

	public String getProductShortDesc() {
		return ProductShortDesc;
	}

	public void setProductShortDesc(String productShortDesc) {
		ProductShortDesc = productShortDesc;
	}

	public String getProductLongDesc() {
		return ProductLongDesc;
	}

	public void setProductLongDesc(String productLongDesc) {
		ProductLongDesc = productLongDesc;
	}

	public String getProductThumb() {
		return ProductThumb;
	}

	public void setProductThumb(String productThumb) {
		ProductThumb = productThumb;
	}

	public String getProductImage() {
		return ProductImage;
	}

	public void setProductImage(String productImage) {
		ProductImage = productImage;
	}

	public Date getProductUpdateDate() {
		return ProductUpdateDate;
	}

	public void setProductUpdateDate(Date productUpdateDate) {
		ProductUpdateDate = productUpdateDate;
	}

	public int getProductStock() {
		return ProductStock;
	}

	public void setProductStock(int productStock) {
		ProductStock = productStock;
	}

	public String getProductLocation() {
		return ProductLocation;
	}

	public void setProductLocation(String productLocation) {
		ProductLocation = productLocation;
	}

	public int getCategoryId() {
		return CategoryId;
	}

	public void setCategoryId(int categoryId) {
		this.CategoryId = categoryId;
	}

	@Override
	public String toString() {
		return "Products [ProductID=" + ProductID + ", ProductSKU=" + ProductSKU + ", ProductName=" + ProductName
				+ ", ProductPrice=" + ProductPrice + ", ProductWeight=" + ProductWeight + ", ProductCartDesc="
				+ ProductCartDesc + ", ProductShortDesc=" + ProductShortDesc + ", ProductLongDesc=" + ProductLongDesc
				+ ", ProductThumb=" + ProductThumb + ", ProductImage=" + ProductImage + ", ProductUpdateDate="
				+ ProductUpdateDate + ", ProductStock=" + ProductStock + ", ProductLocation=" + ProductLocation
				+ ", categoryId=" + CategoryId + "]";
	}

}
