package com.zyp.service;

import com.zyp.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);
    //删除一本书
    int deleteBookById(int id);
    //更新一本书
    int updataBook(Books books);
    //查询一本书
    Books queryBookById(int id);

    //查询全部书
    List<Books> queryAllBook();
    Books queryBookByName(String bookName);
}
