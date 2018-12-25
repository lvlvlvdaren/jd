package com.dh.mall.cust.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dh.mall.cust.model.CustModel;
import com.dh.mall.cust.model.OrderwebModel;

public interface OrderwebMapper {

	int addOrder(OrderwebModel om);

	OrderwebModel searchLastId();

	int addOrderMap( @Param(value="procode") String procode,@Param(value="ordcode") String ordcode, @Param(value = "count") Integer count);

	List<OrderwebModel> searchAllByCust(CustModel cm);

}
