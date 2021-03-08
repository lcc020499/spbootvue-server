package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ShenqingquerenMapper;
import com.spring.entity.Shenqingqueren;
import com.spring.service.ShenqingquerenService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ShenqingquerenService")
public class ShenqingquerenServiceImpl extends ServiceBase<Shenqingqueren> implements ShenqingquerenService {
    @Resource
    private ShenqingquerenMapper dao;

    @Override
    protected ShenqingquerenMapper getDao() {
        return dao;
    }
}
