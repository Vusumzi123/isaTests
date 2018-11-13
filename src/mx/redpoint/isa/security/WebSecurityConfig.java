package mx.redpoint.isa.security;

import org.springframework.context.annotation.*;    
//import org.springframework.security.config.annotation.authentication.builders.*;    
import org.springframework.security.config.annotation.web.builders.HttpSecurity;    
import org.springframework.security.config.annotation.web.configuration.*;    
import org.springframework.security.core.userdetails.*;  
//import org.springframework.security.core.userdetails.UserDetailsService;    
import org.springframework.security.provisioning.InMemoryUserDetailsManager;  
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;  
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;    
@EnableWebSecurity    
@ComponentScan("com.testMVC.controller")    
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {    
  
@Bean    
public UserDetailsService userDetailsService() {    
  InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();    
  manager.createUser(User
  		.withDefaultPasswordEncoder()
  		.username("admin@hotmail.com")
  		.password("admin")
  		.roles("ADMIN")
  		.build()
  ); 
  manager.createUser(User
  		.withDefaultPasswordEncoder()
  		.username("user@hotmail.com")
  		.password("user")
  		.roles("USER")
  		.build()
  );    
  return manager;    
}    
  
@Override    
protected void configure(HttpSecurity http) throws Exception {    
      
    http.authorizeRequests()
    .antMatchers("/services/admin/**").hasRole("ADMIN")   //servicio para navegar en los jsp como administrador
    .antMatchers("/services/neig/**").hasRole("USER")	//servicios para navegar en los jsp como usuario
    .antMatchers("/services/auth/**").authenticated()	//servicios para navegar en los jsp como administrador y usuario
    .and()  
    .formLogin()  
    .loginPage("/services/login")  
    .and()  
    .logout()  
    .logoutRequestMatcher(new AntPathRequestMatcher("/logout")); 
}    

}  