package me.geekang.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * 
 * @ClassName:  RootConfig   
 * @Description:TODO 
 * @author: Geekang
 * @date:   2018年1月17日 下午11:50:02   
 *
 */
@Configuration
@ComponentScan(basePackages = { "me.geekang" }, excludeFilters = {
		@Filter(type = FilterType.ANNOTATION, value = EnableWebMvc.class) })
public class RootConfig {
}
