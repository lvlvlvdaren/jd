package com.dh.mall.cust.mapper;

import java.util.List;

import com.dh.mall.cust.model.CartModel;
import com.dh.mall.cust.model.CustModel;

public interface CartMapper {
CartModel searchByCustAccountAndProcode(CartModel cm);

int addCart(CartModel cartModel);

int updateCart(CartModel cartModel);

List<CartModel> searchGoodsByUser(String custAccount);

int deletePro(String procode);

CartModel searchPriceByCartId(CartModel cart);

int updateTotalIncart(CartModel cart);

CartModel searchCountAndTotalById(CartModel cart);

int seachCountByUserAccount(CustModel cm);
}
