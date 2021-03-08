package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "huifuzixun")
public class Huifuzixun implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "zixunneirong")
    private String zixunneirong;
    @Column(name = "zixunren")
    private String zixunren;
    @Column(name = "huifu")
    private String huifu;
    @Column(name = "maijia")
    private String maijia;
    private Integer zaixianzixunid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getZixunneirong() {
        return zixunneirong;
    }
    public void setZixunneirong(String zixunneirong) {
        this.zixunneirong = zixunneirong == null ? "" : zixunneirong.trim();
    }

    public String getZixunren() {
        return zixunren;
    }
    public void setZixunren(String zixunren) {
        this.zixunren = zixunren == null ? "" : zixunren.trim();
    }

    public String getHuifu() {
        return huifu;
    }
    public void setHuifu(String huifu) {
        this.huifu = huifu == null ? "" : huifu.trim();
    }

    public String getMaijia() {
        return maijia;
    }
    public void setMaijia(String maijia) {
        this.maijia = maijia == null ? "" : maijia.trim();
    }
    public Integer getZaixianzixunid() {
        return zaixianzixunid;
    }
    public void setZaixianzixunid(Integer zaixianzixunid) {
        this.zaixianzixunid = zaixianzixunid == null ? 0 : zaixianzixunid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
