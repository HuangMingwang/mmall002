package top.wl9939.mmall002.service.impl;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.wl9939.mmall002.service.ProductCategoryService;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class ProductCategoryServiceImplTest {
    @Autowired
    private ProductCategoryService service;

    @Test
    void test() {
        service.getAllProductCategoryVO();
    }
}