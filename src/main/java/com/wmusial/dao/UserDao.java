package com.wmusial.dao;

import com.wmusial.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends JpaRepository<User, Long> {

    User findByEmail(String email);

}

// @Component
// @Controller - @Service - @Repository