package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.WupindingdanMapper;
import com.spring.entity.Wupindingdan;
import com.spring.service.WupindingdanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("WupindingdanService")
public class WupindingdanServiceImpl extends ServiceBase<Wupindingdan> implements WupindingdanService {
    @Resource
    private WupindingdanMapper dao;

    @Override
    protected WupindingdanMapper getDao() {
        return dao;
    }
}
