package com.jiuheng;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.jiuheng.mapper")
public class SafeInWorkApplication {

    public static void main(String[] args) {
        SpringApplication.run(SafeInWorkApplication.class, args);
    }

}
