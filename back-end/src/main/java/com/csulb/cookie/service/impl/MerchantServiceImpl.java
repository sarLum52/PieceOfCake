package com.csulb.cookie.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.csulb.cookie.bean.ControllerResult;
import com.csulb.cookie.domain.Customer;
import com.csulb.cookie.domain.Merchant;
import com.csulb.cookie.service.MerchantService;
import com.csulb.cookie.mapper.MerchantMapper;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class MerchantServiceImpl extends ServiceImpl<MerchantMapper, Merchant>  implements MerchantService {

    @Override
    public Map<String, Object> merchantLogin(String username, String password) {
        if (username == null || password == null) {
            return new ControllerResult(ControllerResult.BAD_REQUEST, null, "bad reqeust").toJsonMap();
        }

        QueryWrapper<Merchant> wrapper = new QueryWrapper<>();
        wrapper.eq("username", username);
        Merchant c = getBaseMapper().selectOne(wrapper);
        if (c != null && c.getPassword() != null) {
            if (c.getPassword().equals(password))
                return new ControllerResult(ControllerResult.SUCCESS, c, "success").toJsonMap();
            else
                return new ControllerResult(ControllerResult.UNLOGIN, null, "fail").toJsonMap();

        }

        return new ControllerResult(ControllerResult.NOT_FOUND, null, "not found").toJsonMap();
    }

    @Override
    public Map<String, Object> merchantRegister(Customer customer) {
        // TODO: Once front-end decide the format of input, then verify here
        return null;
    }
}




