package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.HuifuzixunMapper;
import com.spring.entity.Huifuzixun;
import com.spring.service.HuifuzixunService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("HuifuzixunService")
public class HuifuzixunServiceImpl extends ServiceBase<Huifuzixun> implements HuifuzixunService {
    @Resource
    private HuifuzixunMapper dao;

    @Override
    protected HuifuzixunMapper getDao() {
        return dao;
    }
}
