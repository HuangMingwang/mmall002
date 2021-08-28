package top.wl9939.mmall002.service.impl;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.wl9939.mmall002.entity.Orders;
import top.wl9939.mmall002.mapper.UserMapper;
import top.wl9939.mmall002.service.OrdersService;

import javax.annotation.Resource;

@SpringBootTest
class OrderServiceImplTest {
    @Autowired
    public OrdersService ordersService;
    @Test
    void save() {
        Orders orders = new Orders();
        orders.setCost(100F);
        ordersService.save(orders);
    }

    @Test
    void findAllOrederVOByUserId() {
    }
}