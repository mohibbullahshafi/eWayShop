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
public class UsersDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		System.out.println(jdbc.getClass());
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Users> getUsers() {
		return jdbc.query("select * from users", new RowMapper<Users>() {

			public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
				Users users = new Users();
				users.setUserID(rs.getInt("userId"));
				users.setUserEmail(rs.getString("userEmail"));
				users.setUserPassword(rs.getString("userPassword"));
				users.setUserFirstName(rs.getString("userFirstName"));
				users.setUserLastName(rs.getString("userLastName"));
				users.setUserCity(rs.getString("userCity"));
				users.setUserZip(rs.getString("userZip"));
				users.setUserRegistrationDate(rs.getDate("userRegistrationDate"));
				users.setUserPhone(rs.getString("userPhone"));
				users.setUserCountry(rs.getString("userCountry"));
				users.setUserAddress(rs.getString("userAddress"));

				return users;
			}

		});
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
				System.out.println(rs.getString("ProductSKU"));
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

	public boolean createUser(Users users) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(users);
		return jdbc.update(
				"insert into users (userEmail,userPassword,userFirstName,userLastName,userCity,userZip,userRegistrationDate,userPhone,userCountry,userAddress) values(:userEmail,:userPassword,:userFirstName,:userLastName,:userCity,:userZip,curdate()   ,:userPhone,:userCountry,:userAddress)",
				params) == 1;
	}

}
