<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="getBoardList">JaeHongPage</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="getBoardList">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">개발중..</a></li>
          <li><a href="#">개발중..</a></li>
          <li><a href="#">개발중..</a></li>
        </ul>
      </li>
    </ul>
    
    
    <!-- 세션값이 있을경우 회원, 로그인출력-->
    <!-- choose안에 주석사용시 에러   -->
    <!-- 세션값이 없을경우 회원가입, 로그인출력-->
    <c:choose>
    	
    	<c:when test="${session == null}">
    		<ul class="nav navbar-nav navbar-right">
     			 <li><a href="signUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    			 <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
   		    </ul>
    	</c:when>
    	<c:otherwise>
    		<ul class="nav navbar-nav navbar-right">
  		  		 <li><a><span class="glyphicon glyphicon-user"></span> ${session.u_id} 님</a></li>
    			 <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
    		</ul>
    	</c:otherwise>
    </c:choose>
    
  </div>
</nav>
  