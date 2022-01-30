package com.csulb.cookie.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.csulb.cookie.bean.ControllerResult;
import com.csulb.cookie.domain.Customer;
import com.csulb.cookie.service.CustomerService;
import com.csulb.cookie.mapper.CustomerMapper;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class CustomerServiceImpl extends ServiceImpl<CustomerMapper, Customer> implements CustomerService {

    @Override
    public Map<String, Object> customerLogin(String username, String password) {
        if (username == null || password == null) {
            return new ControllerResult(ControllerResult.BAD_REQUEST, null, "bad reqeust").toJsonMap();
        }

        QueryWrapper<Customer> wrapper = new QueryWrapper<>();
        wrapper.eq("username", username);
        Customer c = getBaseMapper().selectOne(wrapper);
        if (c != null && c.getPassword() != null) {
            if (c.getPassword().equals(password))
                return new ControllerResult(ControllerResult.SUCCESS, c, "success").toJsonMap();
            else
                return new ControllerResult(ControllerResult.UNLOGIN, null, "fail").toJsonMap();

        }

        return new ControllerResult(ControllerResult.NOT_FOUND, null, "not found").toJsonMap();
    }
}



