package com.Service;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

import java.util.ArrayList;

@Configuration
public class SwaggerConfig {
    @Bean
    public Docket docket(){
        return new Docket(DocumentationType.OAS_30)
                .apiInfo(apiInfo());
    }
    private ApiInfo apiInfo(){
        // 作者信息
        Contact contact = new Contact("TIOXY", "https://www.cnblogs.com/tioxy/", "1369773052@qq.com");

        return new ApiInfo(
                "Tioxy的接口文档",
                "项目描述",
                "1.0",
                "https://www.cnblogs.com/tioxy/",
                contact,
                "Apache 2.0",
                "http://www.apache.org/licenses/LICENSE-2.0",
                new ArrayList());

    }
}
