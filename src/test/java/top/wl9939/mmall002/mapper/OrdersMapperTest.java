package top.wl9939.mmall002.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.wl9939.mmall002.entity.Orders;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class OrdersMapperTest {
    @Autowired
    private OrdersMapper ordersMapper;
    @Test
    void test() {
        ordersMapper.selectById(127);
    }

}