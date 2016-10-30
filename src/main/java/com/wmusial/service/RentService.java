package com.wmusial.service;


import com.wmusial.model.Book;
import com.wmusial.model.User;

public interface RentService {

    void createRent(User user, Book book);
}
