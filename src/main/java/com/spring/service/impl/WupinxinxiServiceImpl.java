package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.WupinxinxiMapper;
import com.spring.entity.Wupinxinxi;
import com.spring.service.WupinxinxiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("WupinxinxiService")
public class WupinxinxiServiceImpl extends ServiceBase<Wupinxinxi> implements WupinxinxiService {
    @Resource
    private WupinxinxiMapper dao;

    @Override
    protected WupinxinxiMapper getDao() {
        return dao;
    }
}
