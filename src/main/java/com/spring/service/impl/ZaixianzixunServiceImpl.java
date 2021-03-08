package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ZaixianzixunMapper;
import com.spring.entity.Zaixianzixun;
import com.spring.service.ZaixianzixunService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ZaixianzixunService")
public class ZaixianzixunServiceImpl extends ServiceBase<Zaixianzixun> implements ZaixianzixunService {
    @Resource
    private ZaixianzixunMapper dao;

    @Override
    protected ZaixianzixunMapper getDao() {
        return dao;
    }
}
