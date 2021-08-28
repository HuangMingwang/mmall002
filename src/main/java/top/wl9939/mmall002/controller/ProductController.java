package top.wl9939.mmall002.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import top.wl9939.mmall002.entity.User;
import top.wl9939.mmall002.service.CartService;
import top.wl9939.mmall002.service.ProductCategoryService;
import top.wl9939.mmall002.service.ProductService;
import top.wl9939.mmall002.vo.TableDataVO;
import top.wl9939.mmall002.vo.TableProductVO;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author huang mingwang
 * @since 2021-03-06
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductCategoryService productCategoryService;
    @Autowired
    private CartService cartService;

    @PostMapping("/findByKey")
    public ModelAndView findByKey(String keyWord, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productList");
        // 根据关键子查询
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.like("name", keyWord);
        modelAndView.addObject("productList", productService.list(wrapper));
        modelAndView.addObject("list", productCategoryService.getAllProductCategoryVO());
        User user = (User) session.getAttribute("user");
        if (user == null) {
            modelAndView.addObject("cartList", new ArrayList<>());
        } else {
            modelAndView.addObject("cartList", cartService.findAllCartVOByUserId(user.getId()));
        }
        return modelAndView;
    }

    @GetMapping("/findById/{id}")
    public ModelAndView findById(@PathVariable("id") Integer id, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productDetail");
        modelAndView.addObject("product",productService.getById(id));
        modelAndView.addObject("list", productCategoryService.getAllProductCategoryVO());
        User user = (User) session.getAttribute(("user"));
        if (user == null) {
            modelAndView.addObject("cartList", new ArrayList<>());
        } else {
            modelAndView.addObject("cartList", cartService.findAllCartVOByUserId(user.getId()));
        }
        return modelAndView;
    }

    @GetMapping("/list/{type}/{id}")
    public ModelAndView list(
            @PathVariable("type") String type,
            @PathVariable("id") Integer id,
            HttpSession session
    ){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productList");
        modelAndView.addObject("productList",productService.findByCategoryId(type,id));
        modelAndView.addObject("list",productCategoryService.getAllProductCategoryVO());
        User user = (User)session.getAttribute("user");
        if(user == null){
            modelAndView.addObject("cartList",new ArrayList<>());
        }else{
            modelAndView.addObject("cartList",cartService.findAllCartVOByUserId(user.getId()));
        }
        return modelAndView;
    }

    @RequestMapping("/findAllTableProduct")
    @ResponseBody
    public TableDataVO<TableProductVO> findAllTableProduct(Integer page, Integer limit){
        return productService.findAllTableData(page, limit);
    }



}

