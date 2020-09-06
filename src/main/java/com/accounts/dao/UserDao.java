package com.accounts.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.accounts.models.User;

public interface UserDao extends JpaRepository<User, String>{

}
