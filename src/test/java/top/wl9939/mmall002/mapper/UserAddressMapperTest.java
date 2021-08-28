package top.wl9939.mmall002.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class UserAddressMapperTest {
    @Autowired
    private UserAddressMapper userAddressMapper;
    @Test
    void testSelectOne() {
        userAddressMapper.selectOne(new QueryWrapper("isdefault"));
    }
}