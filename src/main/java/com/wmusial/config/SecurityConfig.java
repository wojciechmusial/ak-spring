package com.wmusial.config;

import com.wmusial.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserService userService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication().withUser("admin").password("1234").roles("USER");

        auth.userDetailsService(userService);

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()        // konfiguracja tego, ktore requesty maja byc autoryzowane a ktore nie
                    .antMatchers("/login").permitAll()
                    .antMatchers("/register").permitAll()
                    .antMatchers("/resources/**").permitAll()
                    .antMatchers("/users/**", "/create-user").hasRole("ADMIN")
                    .antMatchers("/admin/**").hasRole("ADMIN")
                    .antMatchers("/api/**").permitAll()
                    .antMatchers("/**").authenticated()
                .and()
                .formLogin()                // konfigaracja formularza logowania
                    .usernameParameter("email")
                    .passwordParameter("password")
                    .loginPage("/login")
                    .loginProcessingUrl("/login")        // adres na ktory wysyalmy post z formularza logowania
                .and()
                .logout()
                    .logoutUrl("/logout")
                    .logoutSuccessUrl("/login?logout")
                .and()
                .csrf()             // cross site request forgery
                    .disable();
    }
}
