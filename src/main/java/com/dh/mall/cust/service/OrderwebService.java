package com.dh.mall.cust.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.mall.cust.mapper.CartMapper;
import com.dh.mall.cust.mapper.OrderwebMapper;
import com.dh.mall.cust.model.CartModel;
import com.dh.mall.cust.model.CustModel;
import com.dh.mall.cust.model.OrderwebModel;

@Service
public class OrderwebService {
@Autowired
private CartMapper cartMapper;
@Autowired
private OrderwebMapper orderwebMapper;

	public boolean addOrder(List<CartModel> list, CustModel cm) {
	boolean flag = false;
//	String ordcode = generateOrderCode(cm.getAccount());
	String ordcode = UUID.randomUUID().toString();
		int total = 0;
		List<CartModel> carlist = new ArrayList<>();
		for(int i = 0;i<list.size();i++) {
			CartModel cm1 = cartMapper.searchCountAndTotalById(list.get(i));
			total += cm1.getTotal();
			carlist.add(cm1);
		}
		OrderwebModel om = new OrderwebModel();
		om.setOrdcode(ordcode);
		om.setTotal(total);
		om.setCust(cm);
		int oId = orderwebMapper.addOrder(om);
		OrderwebModel oderId = orderwebMapper.searchLastId();
		if(oId>0){
			for(int i=0;i<carlist.size();i++) {
			int r = orderwebMapper.addOrderMap(carlist.get(i).getProduct().getProcode(),oderId.getOrdcode(),carlist.get(i).getCount());
			r = cartMapper.deletePro(carlist.get(i).getProduct().getProcode());
			if(r>0) {
				flag = true;
			}else {
				flag = false;
				break;
			}
			}
		}
		return flag;
	}

	public List<OrderwebModel> searchAllByCust(CustModel cm) {
		List<OrderwebModel> list = orderwebMapper.searchAllByCust(cm);
		return list;
	}

//	private String generateOrderCode(String account) {
//		Date date = new Date();
//		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmSSss");
//		String ordcode = format.format(date);
//		String ac = String.valueOf(account);
//		String prev = "";
//		for(int i = ac.length();i<10;i++) {
//			prev+="0";
//		}
//		ac = prev + ac;
//		ordcode = ordcode  + ac;
//		return ordcode;
//	}

}
