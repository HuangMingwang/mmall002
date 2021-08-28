package top.wl9939.mmall002.service;

import top.wl9939.mmall002.entity.Orders;
import com.baomidou.mybatisplus.extension.service.IService;
import top.wl9939.mmall002.entity.User;
import top.wl9939.mmall002.vo.OrdersVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author huang mingwang
 * @since 2021-03-08
 */
public interface OrdersService extends IService<Orders> {
    public boolean save(Orders orders, User user, String address, String remark);
    public List<OrdersVO> findAllOrederVOByUserId(Integer id);
}
