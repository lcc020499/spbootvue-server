package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "zaixianzixun")
public class Zaixianzixun implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "wupinbianhao")
    private String wupinbianhao;
    @Column(name = "fenlei")
    private String fenlei;
    @Column(name = "wupinmingcheng")
    private String wupinmingcheng;
    @Column(name = "wupintupian")
    private String wupintupian;
    @Column(name = "wupinjiage")
    private Double wupinjiage;
    @Column(name = "maijia")
    private String maijia;
    @Column(name = "zixunneirong")
    private String zixunneirong;
    @Column(name = "maijiahuifu")
    private String maijiahuifu;
    @Column(name = "zixunren")
    private String zixunren;
    private Integer wupinxinxiid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getHuifuzixunCount()
    {
        return Query.make("huifuzixun").where("zaixianzixunid" , id).count();
    }


    public String getWupinbianhao() {
        return wupinbianhao;
    }
    public void setWupinbianhao(String wupinbianhao) {
        this.wupinbianhao = wupinbianhao == null ? "" : wupinbianhao.trim();
    }

    public String getFenlei() {
        return fenlei;
    }
    public void setFenlei(String fenlei) {
        this.fenlei = fenlei == null ? "" : fenlei.trim();
    }

    public String getWupinmingcheng() {
        return wupinmingcheng;
    }
    public void setWupinmingcheng(String wupinmingcheng) {
        this.wupinmingcheng = wupinmingcheng == null ? "" : wupinmingcheng.trim();
    }

    public String getWupintupian() {
        return wupintupian;
    }
    public void setWupintupian(String wupintupian) {
        this.wupintupian = wupintupian == null ? "" : wupintupian.trim();
    }

    public Double getWupinjiage() {
        return wupinjiage;
    }
    public void setWupinjiage(Double wupinjiage) {
        this.wupinjiage = wupinjiage == null ? 0.0f : wupinjiage;
    }

    public String getMaijia() {
        return maijia;
    }
    public void setMaijia(String maijia) {
        this.maijia = maijia == null ? "" : maijia.trim();
    }

    public String getZixunneirong() {
        return zixunneirong;
    }
    public void setZixunneirong(String zixunneirong) {
        this.zixunneirong = zixunneirong == null ? "" : zixunneirong.trim();
    }

    public String getMaijiahuifu() {
        return maijiahuifu;
    }
    public void setMaijiahuifu(String maijiahuifu) {
        this.maijiahuifu = maijiahuifu == null ? "" : maijiahuifu.trim();
    }

    public String getZixunren() {
        return zixunren;
    }
    public void setZixunren(String zixunren) {
        this.zixunren = zixunren == null ? "" : zixunren.trim();
    }
    public Integer getWupinxinxiid() {
        return wupinxinxiid;
    }
    public void setWupinxinxiid(Integer wupinxinxiid) {
        this.wupinxinxiid = wupinxinxiid == null ? 0 : wupinxinxiid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
