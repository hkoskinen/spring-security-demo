package com.example.springsecuritydemo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(new EmbeddedDatabaseBuilder().setType(EmbeddedDatabaseType.H2).build());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/h2/**").hasRole("ADMIN")
			.antMatchers("/").hasRole("USER")
			.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/process-login")
				.permitAll()
				.and()
			.logout().permitAll()
			.and()
			.exceptionHandling().accessDeniedPage("/access-denied");
		
		// you need to disable csrf and X-Frame-Options headers for H2-console to work
		//http.csrf().disable();
		//http.headers().frameOptions().disable();
	}
}
