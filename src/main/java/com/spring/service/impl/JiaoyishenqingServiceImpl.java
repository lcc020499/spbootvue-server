package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.JiaoyishenqingMapper;
import com.spring.entity.Jiaoyishenqing;
import com.spring.service.JiaoyishenqingService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("JiaoyishenqingService")
public class JiaoyishenqingServiceImpl extends ServiceBase<Jiaoyishenqing> implements JiaoyishenqingService {
    @Resource
    private JiaoyishenqingMapper dao;

    @Override
    protected JiaoyishenqingMapper getDao() {
        return dao;
    }
}
