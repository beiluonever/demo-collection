package org.pyma.demo.http.config;

import org.pyma.demo.http.filter.RequestEnhanceFilter;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * <p>
 * demo-collection
 * config filters
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-11-20 10:08
 **/
@Configuration
@EnableAutoConfiguration
public class FilterConfig {
    @Bean
    public FilterRegistrationBean filterRegistrationBean(RequestEnhanceFilter requestEnhanceFilter) {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(requestEnhanceFilter);
        registrationBean.setOrder(0);
        return registrationBean;
    }

    @Bean
    public RequestEnhanceFilter headerEnhanceFilter() {
        return new RequestEnhanceFilter();
    }
}
