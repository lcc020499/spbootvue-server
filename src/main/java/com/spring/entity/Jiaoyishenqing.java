package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "jiaoyishenqing")
public class Jiaoyishenqing implements Serializable {
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
    @Column(name = "jiaoyididian")
    private String jiaoyididian;
    @Column(name = "maijia")
    private String maijia;
    @Column(name = "jiaoyishijian")
    private String jiaoyishijian;
    @Column(name = "shenqingzhuangtai")
    private String shenqingzhuangtai;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "shenqingren")
    private String shenqingren;
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

    public Long getShenqingquerenCount()
    {
        return Query.make("shenqingqueren").where("jiaoyishenqingid" , id).count();
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

    public String getJiaoyididian() {
        return jiaoyididian;
    }
    public void setJiaoyididian(String jiaoyididian) {
        this.jiaoyididian = jiaoyididian == null ? "" : jiaoyididian.trim();
    }

    public String getMaijia() {
        return maijia;
    }
    public void setMaijia(String maijia) {
        this.maijia = maijia == null ? "" : maijia.trim();
    }

    public String getJiaoyishijian() {
        return jiaoyishijian;
    }
    public void setJiaoyishijian(String jiaoyishijian) {
        this.jiaoyishijian = jiaoyishijian == null ? "" : jiaoyishijian.trim();
    }

    public String getShenqingzhuangtai() {
        return shenqingzhuangtai;
    }
    public void setShenqingzhuangtai(String shenqingzhuangtai) {
        this.shenqingzhuangtai = shenqingzhuangtai == null ? "" : shenqingzhuangtai.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getShenqingren() {
        return shenqingren;
    }
    public void setShenqingren(String shenqingren) {
        this.shenqingren = shenqingren == null ? "" : shenqingren.trim();
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
