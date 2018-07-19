package mx.redpoint.isa.security;

import javax.servlet.ServletContext;

import org.springframework.security.web.context.*;
import org.springframework.web.multipart.support.MultipartFilter;    

public class SecurityWebApplicationInitializer    
    extends AbstractSecurityWebApplicationInitializer {   
	
	@Override
    protected void beforeSpringSecurityFilterChain(ServletContext servletContext) {
        insertFilters(servletContext, new MultipartFilter());
    }
    
} 