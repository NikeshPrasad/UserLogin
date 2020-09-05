package com.accounts.dao;

import org.springframework.data.repository.CrudRepository;

import com.accounts.models.User;

public interface UserDao extends CrudRepository<User, String>{

}
