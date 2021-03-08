package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.QuxiaodingdanMapper;
import com.spring.entity.Quxiaodingdan;
import com.spring.service.QuxiaodingdanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("QuxiaodingdanService")
public class QuxiaodingdanServiceImpl extends ServiceBase<Quxiaodingdan> implements QuxiaodingdanService {
    @Resource
    private QuxiaodingdanMapper dao;

    @Override
    protected QuxiaodingdanMapper getDao() {
        return dao;
    }
}
