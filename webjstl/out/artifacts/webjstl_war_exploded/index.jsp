<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2019/11/17
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    jstl认识：
    作用：提高再jsp页面中的逻辑代码的编写效率，使用标签
    使用：
    jstl的核心标签库
    jstl的格式化标签库
    jstl的sql标签库
    jstl的函数标签库
    jstl的xml标签库
    jstl的核心标签库：
    1，导入jar包
    2，声明jstl标签库的引入(核心标签库)
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    内容：<c:out value="数据" default="默认值"></c:out>
    数据可以实常量值也可以是el表达式 作用：将数据输出给客户端

    <c:set var="hello" value="hello pageContext" scope="page"></c:set>
    作用：存储数据到作用域对象中
    var:表示存储的键名
    value:表示存储的数据
    scope:表示要存储的作用域对象 page request session application
--%>
<%
    request.setAttribute("str","今天天气真好，适合学习");
%>
${str}
<c:out value="哈哈哈"></c:out>
<c:out value="${str2}" default="666666"></c:out>
<c:set var="hello" value="hello pageContext" scope="page"></c:set>
<c:set var="hello" value="hello request" scope="request"></c:set>
<c:set var="hello" value="hello session" scope="session"></c:set>
<c:set var="hello" value="hello application" scope="application"></c:set><br />
<c:out value="${hello}"></c:out> <br />
<c:out value="${requestScope.hello}"></c:out><br />
<c:out value="${sessionScope.hello}"></c:out><br />
<c:out value="${applicationScope.hello}"></c:out><br />