<%--
  Created by IntelliJ IDEA.
  User: 赵耀鹏
  Date: 2021/9/3
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
</head>


</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>

            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updataBook" method="post">
        <%--出现的问题：修改了SQL请求，但是修改失败，初次考虑是事务问题，配置完毕，依旧失败--%>
        <%--看一下SQL语句，能否执行成功；SQL执行失败，修改未完成--%>
            <input type="hidden" name="bookID" value="${QBook.bookID}">
            <%--前端修改隐藏域--%>
        <div class="form-group">
            <label>书籍名称</label>
            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" required >
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}" required>
        </div>
        <div class="form-group">
            <label>书籍描述</label>
            <input type="text" name="detail" class="form-control" value="${QBook.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="提交">
        </div>
    </form>
</div>
</body>
</html>

