package top.wl9939.mmall002.service;

import top.wl9939.mmall002.entity.ProductCategory;
import com.baomidou.mybatisplus.extension.service.IService;
import top.wl9939.mmall002.vo.ProductCategoryVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author huang mingwang
 * @since 2021-03-06
 */
public interface ProductCategoryService extends IService<ProductCategory> {
    public List<ProductCategoryVO> getAllProductCategoryVO();
}
