package top.wl9939.mmall002.service.impl;

import top.wl9939.mmall002.entity.User;
import top.wl9939.mmall002.mapper.UserMapper;
import top.wl9939.mmall002.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author huang mingwang
 * @since 2021-03-06
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
