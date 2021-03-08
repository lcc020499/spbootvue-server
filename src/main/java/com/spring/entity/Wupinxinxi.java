package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "wupinxinxi")
public class Wupinxinxi implements Serializable {
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
    @Column(name = "lianxidianhua")
    private String lianxidianhua;
    @Column(name = "lianxiren")
    private String lianxiren;
    @Column(name = "jiaoyididian")
    private String jiaoyididian;
    @Column(name = "xinjiuchengdu")
    private String xinjiuchengdu;
    @Column(name = "wupinzhuangtai")
    private String wupinzhuangtai;
    @Column(name = "wupinjieshao")
    private String wupinjieshao;
    @Column(name = "maijia")
    private String maijia;
    private String issh;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getJiaoyishenqingCount()
    {
        return Query.make("jiaoyishenqing").where("wupinxinxiid" , id).count();
    }
    public Long getZaixianzixunCount()
    {
        return Query.make("zaixianzixun").where("wupinxinxiid" , id).count();
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

    public String getLianxidianhua() {
        return lianxidianhua;
    }
    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua == null ? "" : lianxidianhua.trim();
    }

    public String getLianxiren() {
        return lianxiren;
    }
    public void setLianxiren(String lianxiren) {
        this.lianxiren = lianxiren == null ? "" : lianxiren.trim();
    }

    public String getJiaoyididian() {
        return jiaoyididian;
    }
    public void setJiaoyididian(String jiaoyididian) {
        this.jiaoyididian = jiaoyididian == null ? "" : jiaoyididian.trim();
    }

    public String getXinjiuchengdu() {
        return xinjiuchengdu;
    }
    public void setXinjiuchengdu(String xinjiuchengdu) {
        this.xinjiuchengdu = xinjiuchengdu == null ? "" : xinjiuchengdu.trim();
    }

    public String getWupinzhuangtai() {
        return wupinzhuangtai;
    }
    public void setWupinzhuangtai(String wupinzhuangtai) {
        this.wupinzhuangtai = wupinzhuangtai == null ? "" : wupinzhuangtai.trim();
    }

    public String getWupinjieshao() {
        return wupinjieshao;
    }
    public void setWupinjieshao(String wupinjieshao) {
        this.wupinjieshao = wupinjieshao == null ? "" : wupinjieshao.trim();
    }

    public String getMaijia() {
        return maijia;
    }
    public void setMaijia(String maijia) {
        this.maijia = maijia == null ? "" : maijia.trim();
    }
    public String getIssh() {
        return issh;
    }
    public void setIssh(String issh) {
        this.issh = issh == null ? "" : issh.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
