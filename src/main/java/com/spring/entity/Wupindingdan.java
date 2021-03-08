package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import net.jntoo.db.Query;

@Table(name = "wupindingdan")
public class Wupindingdan implements Serializable {
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
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "dianhua")
    private String dianhua;
    @Column(name = "dingdanzhuangtai")
    private String dingdanzhuangtai;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "xiadanren")
    private String xiadanren;
    private String iszf;
    private Integer shenqingquerenid;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getQuxiaodingdanCount()
    {
        return Query.make("quxiaodingdan").where("wupindingdanid" , id).count();
    }
    public Long getDingdanquerenCount()
    {
        return Query.make("dingdanqueren").where("wupindingdanid" , id).count();
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

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getDianhua() {
        return dianhua;
    }
    public void setDianhua(String dianhua) {
        this.dianhua = dianhua == null ? "" : dianhua.trim();
    }

    public String getDingdanzhuangtai() {
        return dingdanzhuangtai;
    }
    public void setDingdanzhuangtai(String dingdanzhuangtai) {
        this.dingdanzhuangtai = dingdanzhuangtai == null ? "" : dingdanzhuangtai.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getXiadanren() {
        return xiadanren;
    }
    public void setXiadanren(String xiadanren) {
        this.xiadanren = xiadanren == null ? "" : xiadanren.trim();
    }
    public String getIszf() {
        return iszf;
    }
    public void setIszf(String iszf) {
        this.iszf = iszf == null ? "" : iszf.trim();
    }
    public Integer getShenqingquerenid() {
        return shenqingquerenid;
    }
    public void setShenqingquerenid(Integer shenqingquerenid) {
        this.shenqingquerenid = shenqingquerenid == null ? 0 : shenqingquerenid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
