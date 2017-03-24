package com.ewayshop.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.ewayshop.web.entity.Products;
import com.ewayshop.web.entity.Users;

@Component
public class ProductsDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		System.out.println(jdbc.getClass());
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	/*
	 * ProductID int(12) PK AI ProductSKU varchar(45) ProductName varchar(100)
	 * ProductPrice float ProductWeight float ProductCartDesc varchar(250)
	 * ProductShortDesc varchar(1000) ProductLongDesc text ProductThumb
	 * varchar(100) ProductImage varchar(100) ProductUpdateDate timestamp
	 * ProductStock float ProductLocation varchar(250) categoryId int(11)
	 */
	public List<Products> getAllProducts() {
		return jdbc.query("select * from products", new RowMapper<Products>() {

			public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
				Products products = new Products();
				products.setProductID(rs.getInt("ProductID"));
				products.setProductSKU(rs.getString("ProductSKU"));
				products.setProductName(rs.getString("ProductName"));
				products.setProductPrice(rs.getFloat("ProductPrice"));
				products.setProductWeight(rs.getFloat("ProductWeight"));
				products.setProductCartDesc(rs.getString("ProductCartDesc"));
				products.setProductShortDesc(rs.getString("ProductShortDesc"));
				products.setProductLongDesc(rs.getString("ProductLongDesc"));
				products.setProductThumb(rs.getString("ProductThumb"));
				products.setProductImage(rs.getString("ProductImage"));
				products.setProductUpdateDate(rs.getDate("ProductUpdateDate"));
				products.setProductStock(rs.getInt("ProductStock"));

				return products;
			}

		});
	}

	public boolean createProduct(Products products) {
		//products.setCategoryId(7);

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(products);
		return jdbc.update(
				"insert into products (ProductSKU,ProductName,ProductPrice,ProductWeight,ProductCartDesc,ProductShortDesc,ProductLongDesc,ProductThumb,ProductImage,ProductUpdateDate,ProductStock,ProductLocation) values(:ProductSKU,:ProductName,:ProductPrice,:ProductWeight,:ProductCartDesc,:ProductShortDesc,:ProductLongDesc,:ProductThumb,:ProductImage,curdate(),:ProductStock,:ProductLocation)",
				params) == 1;
	}

}
