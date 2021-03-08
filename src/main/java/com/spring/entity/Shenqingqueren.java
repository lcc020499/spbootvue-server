package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "shenqingqueren")
public class Shenqingqueren implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

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
    @Column(name = "maijia")
    private String maijia;
    @Column(name = "jiaoyishijian")
    private String jiaoyishijian;
    @Column(name = "shenqingren")
    private String shenqingren;
    @Column(name = "queren")
    private String queren;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "querenren")
    private String querenren;
    private Integer jiaoyishenqingid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getWupindingdanCount()
    {
        return Query.make("wupindingdan").where("shenqingquerenid" , id).count();
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

    public String getShenqingren() {
        return shenqingren;
    }
    public void setShenqingren(String shenqingren) {
        this.shenqingren = shenqingren == null ? "" : shenqingren.trim();
    }

    public String getQueren() {
        return queren;
    }
    public void setQueren(String queren) {
        this.queren = queren == null ? "" : queren.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getQuerenren() {
        return querenren;
    }
    public void setQuerenren(String querenren) {
        this.querenren = querenren == null ? "" : querenren.trim();
    }
    public Integer getJiaoyishenqingid() {
        return jiaoyishenqingid;
    }
    public void setJiaoyishenqingid(Integer jiaoyishenqingid) {
        this.jiaoyishenqingid = jiaoyishenqingid == null ? 0 : jiaoyishenqingid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
