package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "quxiaodingdan")
public class Quxiaodingdan implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "dingdanbianhao")
    private String dingdanbianhao;
    @Column(name = "wupinbianhao")
    private String wupinbianhao;
    @Column(name = "wupinmingcheng")
    private String wupinmingcheng;
    @Column(name = "wupintupian")
    private String wupintupian;
    @Column(name = "wupinjiage")
    private Double wupinjiage;
    @Column(name = "jiaoyididian")
    private String jiaoyididian;
    @Column(name = "jiaoyishijian")
    private String jiaoyishijian;
    @Column(name = "maijia")
    private String maijia;
    @Column(name = "xiadanren")
    private String xiadanren;
    @Column(name = "quxiaoyuanyin")
    private String quxiaoyuanyin;
    @Column(name = "quxiaoren")
    private String quxiaoren;
    private Integer wupindingdanid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getDingdanbianhao() {
        return dingdanbianhao;
    }
    public void setDingdanbianhao(String dingdanbianhao) {
        this.dingdanbianhao = dingdanbianhao == null ? "" : dingdanbianhao.trim();
    }

    public String getWupinbianhao() {
        return wupinbianhao;
    }
    public void setWupinbianhao(String wupinbianhao) {
        this.wupinbianhao = wupinbianhao == null ? "" : wupinbianhao.trim();
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

    public String getJiaoyididian() {
        return jiaoyididian;
    }
    public void setJiaoyididian(String jiaoyididian) {
        this.jiaoyididian = jiaoyididian == null ? "" : jiaoyididian.trim();
    }

    public String getJiaoyishijian() {
        return jiaoyishijian;
    }
    public void setJiaoyishijian(String jiaoyishijian) {
        this.jiaoyishijian = jiaoyishijian == null ? "" : jiaoyishijian.trim();
    }

    public String getMaijia() {
        return maijia;
    }
    public void setMaijia(String maijia) {
        this.maijia = maijia == null ? "" : maijia.trim();
    }

    public String getXiadanren() {
        return xiadanren;
    }
    public void setXiadanren(String xiadanren) {
        this.xiadanren = xiadanren == null ? "" : xiadanren.trim();
    }

    public String getQuxiaoyuanyin() {
        return quxiaoyuanyin;
    }
    public void setQuxiaoyuanyin(String quxiaoyuanyin) {
        this.quxiaoyuanyin = quxiaoyuanyin == null ? "" : quxiaoyuanyin.trim();
    }

    public String getQuxiaoren() {
        return quxiaoren;
    }
    public void setQuxiaoren(String quxiaoren) {
        this.quxiaoren = quxiaoren == null ? "" : quxiaoren.trim();
    }
    public Integer getWupindingdanid() {
        return wupindingdanid;
    }
    public void setWupindingdanid(Integer wupindingdanid) {
        this.wupindingdanid = wupindingdanid == null ? 0 : wupindingdanid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
