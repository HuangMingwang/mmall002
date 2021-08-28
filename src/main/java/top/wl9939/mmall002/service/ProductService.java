package top.wl9939.mmall002.service;

import top.wl9939.mmall002.entity.Product;
import com.baomidou.mybatisplus.extension.service.IService;
import top.wl9939.mmall002.vo.TableDataVO;
import top.wl9939.mmall002.vo.TableProductVO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author huang mingwang
 * @since 2021-03-06
 */
public interface ProductService extends IService<Product> {

    public List<Product> findByCategoryId(String type, Integer categoryId);

    /**
     * 后台管理系统返回商品数据
     */
    public TableDataVO<TableProductVO> findAllTableData(Integer page, Integer limit);

}
