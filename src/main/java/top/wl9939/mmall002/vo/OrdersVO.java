package top.wl9939.mmall002.vo;

import lombok.Data;

import java.util.List;

@Data
public class OrdersVO {
    private Integer id;
    private String loginName;
    private String serialnumber;
    private String userAddress;
    private Float cost;
    private List<OrderDetailVO> orderDetailVOList;

    public OrdersVO(Integer id, String loginName, String serialnumber, String userAddress, Float cost) {
        this.id = id;
        this.loginName = loginName;
        this.serialnumber = serialnumber;
        this.userAddress = userAddress;
        this.cost = cost;
    }
}
