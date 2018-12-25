package com.dh.mall.cust.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.cust.mapper.CartMapper;
import com.dh.mall.cust.model.CartModel;
import com.dh.mall.cust.model.CustModel;

@Service
public class CartService {
	@Autowired
	private CartMapper cartMapper;
public boolean addCart(CartModel cartModel) {
	CartModel cart = cartMapper.searchByCustAccountAndProcode(cartModel);
	int rs = 0;
	if(cart==null) {
		int count = cartModel.getCount();
		int price = cartModel.getProduct().getPrice();
		int total = count*price;
		cartModel.setTotal(total);
		rs = cartMapper.addCart(cartModel);
	}else {
		int oldcount = cart.getCount();
		int newcount = oldcount + cartModel.getCount();
		int price = cartModel.getProduct().getPrice();
		int total = newcount*price;
		cartModel.setCount(newcount);
		cartModel.setTotal(total);
		rs = cartMapper.updateCart(cartModel);
	}
	if(rs==1) {
		return true;
	}else {
		return false;
	}
}
public List<CartModel> searchGoodsByUser(String custAccount) {
	List<CartModel> list = cartMapper.searchGoodsByUser(custAccount);
	return list;
}
public boolean deletePro(String procode) {
	int rs = cartMapper.deletePro(procode);
	if(rs>0) {
		return true;
	}else {
	return false;
	}
}
public CartModel updateTotalIncart(CartModel cart) {
	CartModel cm = cartMapper.searchPriceByCartId(cart);
	int price = cm.getProduct().getPrice();
	int count = cart.getCount();
	int total = price*count;
	cart.setCount(count);
	cart.setTotal(total);
	int rs = cartMapper.updateTotalIncart(cart);
	CartModel cmd = cartMapper.searchCountAndTotalById(cart);
	return cmd;
}
public int searchCountsByUser(CustModel cm) {
	int totals = cartMapper.seachCountByUserAccount(cm);
	return totals;
}

}
