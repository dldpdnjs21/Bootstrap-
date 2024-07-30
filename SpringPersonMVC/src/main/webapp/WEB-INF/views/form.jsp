<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person정보입력</title>

	<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
  
  	.navbar {
  		position: fixed;
  		top: 0;
  		left: 0;
  		right: 0;
  		padding: 20px 0;
  		box-shadow: 0px 2px 5px; 
  	}
  
  	.navbar .container-fluid {
  		width: 1300px;
  	}
  	
  	.navbar .container-fluid .navbar-brand {
  		font-weight: 700;
  		font-size: 24px;
  	}
  	
  	.navbar .container-fluid .actions a {
  		color: #acacac;
  		font-weight: 400;
  		font-size: 20px;
  		transition: all 0.4s;
  	}
  	
  	.navbar .container-fluid .actions a:hover {
  		color: #fff;
  		text-decoration: underline;
  	}
  
  	.container {
  		margin-top: 196px;
  		margin-bottom: 10px;
  	}
  	
  	.container form {
  		display: flex;
  		flex-direction: column;
  		width: 600px;
  		margin: 0 auto;
  	}

  	.container input {
  	  margin: 0 20px 20px 12px;
	  padding: 10px;
	  box-sizing: border-box;
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  outline: none;
	  font-size: 14px;
	  transition: 0.3s;
	}
	
	.container input:focus {
	  border: 1px solid #333;
	}
	
	.container input[type="submit"] {
	  background-color: #333;
	  color: #fff;
	  border: 2px solid #333;
	  font-weight: 700;
	  cursor: pointer;
	  transition: 0.4s;
	}
  	
  	footer {
  		position: fixed;
  		bottom: 0;
  		left: 0;
  		right: 0;
  		border-top: 1px solid #ddd;
  		text-align: center;
  		background-color: #fff;
  		padding: 20px 0;
  	}
  	
  	footer .text-muted {
  		margin-bottom: 0;
  	}
  	
  </style>

</head>
<body>
  
  <!-- 헤더 영역 -->
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <div class="container-fluid me-auto">
	    <a class="navbar-brand" href="#">김이조아</a>
	    
	    <div class="actions">
	    	<a class="navbar-brand" href="/person">List</a>
	    	<a class="navbar-brand" href="/person/form">Register</a>
	    </div>
	    
	    
	  </div>
  </nav>
  
  <div class="container">
  
  	<p class="display-5" style="margin-bottom: 30px; text-align: center;">Register Page Hello Bootstrap</p>

	<form method="post">
	    <input type="text" name="name" placeholder="이름을 입력해주세요">
	    <input type="text" name="age" placeholder="나이를 입력해주세요">
	    <input type="text" name="job" placeholder="직업을 입력해주세요">
	    <input type="submit" value="Register" />
	</form>

  </div>
  
  
  <!-- <form method="post" action="/person/form"> -->
  <!-- <form method="post" action="form"> -->
  
  <footer>
  	<p class="text-muted font-italic">| Copyright &copy; LG U+ Ureca 2024 |</p>
  	<p class="text-muted">Dev. 김현정 이예원 조계원</p>
  </footer>
</body>
</html>















