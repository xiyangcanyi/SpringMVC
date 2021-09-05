package com.zyp.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {
    //pojo对应数据库实体类
    private int bookID;
    private String bookName;
    private int bookCounts;
    private String detail;
}
