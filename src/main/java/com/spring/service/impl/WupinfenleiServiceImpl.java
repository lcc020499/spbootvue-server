package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.WupinfenleiMapper;
import com.spring.entity.Wupinfenlei;
import com.spring.service.WupinfenleiService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("WupinfenleiService")
public class WupinfenleiServiceImpl extends ServiceBase<Wupinfenlei> implements WupinfenleiService {
    @Resource
    private WupinfenleiMapper dao;

    @Override
    protected WupinfenleiMapper getDao() {
        return dao;
    }
}
