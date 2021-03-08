package com.spring;

import net.jntoo.util.AppUtil;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = { "com.spring.dao" })  // mapper 扫描一下这个包
public class BootApplication {
    static public ConfigurableApplicationContext content = null;
    public static void main(String[] args) {
        content = SpringApplication.run(BootApplication.class, args);
        //content.getBean(DataSource.class);
        AppUtil.bootstrap(BootApplication.class.getPackage().getName()+".util");
    }
}
