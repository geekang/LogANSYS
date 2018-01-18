package me.geekang.config;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import me.geekang.var.Var;

/**
 * 
 * @author Geekang
 *
 */
public class LogansysWebApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] { RootConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] { WebConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
	
	/**
	 * 上传
	 * <p>Title: customizeRegistration</p>   
	 * <p>Description: </p>   
	 * @param registration   
	 * @see org.springframework.web.servlet.support.AbstractDispatcherServletInitializer#customizeRegistration(javax.servlet.ServletRegistration.Dynamic)
	 */
	@Override
	protected void customizeRegistration(Dynamic registration) {
		
		String osName = "os.name";
		String windows = "windows";
		if(System.getProperty(osName).contains(windows)) {
			Var.setUnix(false);
		} else {
			Var.setUnix(true);
		}
		
		registration.setMultipartConfig(new MultipartConfigElement(Var.getUploadPathPerfix(), 209715200, 419430400, 0));
	}

}
