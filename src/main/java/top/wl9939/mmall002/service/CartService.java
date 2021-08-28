package top.wl9939.mmall002.service;

import top.wl9939.mmall002.entity.Cart;
import com.baomidou.mybatisplus.extension.service.IService;
import top.wl9939.mmall002.vo.CartVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author huang mingwang
 * @since 2021-03-06
 */
public interface CartService extends IService<Cart> {

    public List<CartVO> findAllCartVOByUserId(Integer id);
}
