<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person목록</title>

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
  		margin-top: 106px;
  		margin-bottom: 10px;
  	}
  	
  	.container .table {
  		width: 100%;
  		text-align: center;
  		margin: 0 auto;
  		display: block;
  	}
  	
  	.container .table thead,
  	.container .table tbody {
  		width: 100%;
  		display: block;
  	}
  	
  	.container .table thead tr {
  		display: flex;
  	}
  	
  	.container .table thead tr th {
  		width: calc(100% / 4);
  	}
  	
  	.container .table tbody {
  		height: 415px;
  		overflow-y: auto;
  	}
  	
  	.container .table tbody tr {
  		cursor: pointer;
  		width: 100%;
  		display: flex;
  	}
  	
  	.container .table tbody tr td {
  		width: calc(100% / 4);
  	}
  	
  	.container .table tbody tr:last-child {
  		border-bottom: 1px solid #fff;
  	}
  	
  	footer {
  		position: relative;
  		bottom: 0;
  		left: 0;
  		right: 0;
  		border-top: 1px solid #ddd;
  		text-align: center;
  		
  		padding: 20px 0;
  	}
  	
  	footer .text-muted {
  		margin-bottom: 0;
  	}
  	
  	
  	/* .container .table a.text-secondary {
  		text-decoration: none;
  	} */
  
  	.modal-content {
  		overflow: hidden;
  	}
  
  	.modal .modal-body {
  		padding: 0;
  		
  	}
  
  	.modal .modal-body form {
  		display: flex;
  		flex-direction: column;
  		padding-top: 12px;
  	}
  	
  	.modal .modal-body input {
  	  margin: 0 20px 20px 12px;
	  padding: 10px;
	  box-sizing: border-box;
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  outline: none;
	  font-size: 14px;
	  transition: 0.3s;
	}
	
	.modal .modal-body input:focus {
	  border: 1px solid #333;
	}
	
	.modal .modal-body input:disabled {
		opacity: 0.5;
	}
	
	.modal .modal-body div {
		display: flex;
		border-top: 1px solid #ddd;
	}
	
	.modal .modal-body div button {
		flex-grow: 1;
		padding: 10px;
		background-color: transparent;
		border: none; 
		transition: 0.3s;
	}
	
	.modal .modal-body div button:first-child {
		border-right: 1px solid #ddd; 
	}
  	
  	.modal .modal-body div button:hover {
  		background-color: #333;
  		color: #fff;
  	}
  
  </style>
  
</head>
<%-- 
   list.jsp 

   List<Person> list = (List<Person>)request.getAttribute("list");

   if(list.size()>1){ 테이블 출력 
      for(Person person:list){
           person.getName();
      }
   }
   else {등록된 Person이 없습니다.}
--%>
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
  
  	<p class="display-5" style="margin-bottom: 30px; text-align: center;">List Page Hello Bootstrap</p>
  
  	<c:if test="${ !empty list }">
	  <table class="table table-hover">
	    <thead style="border-bottom: 1px solid #333">
	      <th>번호</th>
	      <th>이름</th>
	      <th>나이</th>
	      <th>직업</th>
	    </thead>
	       
	    <%-- 
	     items="${배열명}"  ==> 배열의 수만큼 반복
	     items="${list}"  ==> 영역에 "list" key로 저장된 값은 new ArrayList<Person>()
	           
	     var = "person"   ==> forEach를 통해 반복되면서 얻어오는 Person객체 한개를 저장하는 변수
	     --%>
	     

	    <c:forEach items="${list }" var="person">
			<tr data-bs-toggle="modal" data-bs-target="#${person.no}modal">
		      	<td class="text-secondary">${person.no }</td>
		      	<td class="text-secondary">${person.name }</td>
		      	<td class="text-secondary">${person.age}</td>
		    	<td class="text-secondary">${person.job}</td>
		    </tr>
        </c:forEach>
        
	  </table>  
   </c:if>	  
   <%-- 
     영역에 "list" key로 저장된 값이 있고 null이라면
     영역에 "list" key로 저장된 값이 있고 List의 경우 size()가 0이라면
   --%>
   <c:if test="${ empty list }">  
      등록된 Person이 없습니다.
   </c:if>
  </div>
  
  <!-- data-bs-toggle="modal" data-bs-target="#${person.no}modal" -->
  
  <c:if test="${ !empty list }">

	    <c:forEach items="${list }" var="person">
	    
	    	<div class="modal" id="${person.no}modal">
			  <div class="modal-dialog modal-dialog-centered">
			    <div class="modal-content">
			
			      <!-- Modal Header -->
			      <div class="modal-header">
			        <h4 class="modal-title">Update Info</h4>
			        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			      </div>
			
			      <!-- Modal body -->
			      <div class="modal-body">
			        
			        <form method="post" action="/person/upform">
						  	<input type="hidden" name="no" value="${person.no }">
						    <input type="text" name="name" value="${person.name }" disabled>
						    <input type="text" name="age" value="${person.age }" placeholder="나이를 입력해주세요">
						    <input type="text" name="job" value="${person.job }" placeholder="직업을 입력해주세요">
						    
						    <div>
						   		<button type="submit">수정</button>
						   		<button type="button" onclick="location.href='/person/delete?no=${person.no}'">삭제</button>
						    </div>
  					</form>
			        
			      </div>
			
			      <!-- <!-- Modal footer
			      <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			      </div> -->
			
			    </div>
			  </div>
			</div>
	    
        </c:forEach>
        
   </c:if>
  
  <footer>
  	<p class="text-muted font-italic">| Copyright &copy; LG U+ Ureca 2024 |</p>
  	<p class="text-muted">Dev. 김현정 이예원 조계원</p>
  </footer>
  
  <%-- 영역에 "list" key로 저장된 값이 있고 null이 아니라면
       영역에 "list" key로 저장된 값이 있고 List의 경우 size()가 1이상이라면   --%>
  
  <!-- <br>
  <a href="form">Person입력하기</a> -->
</body>
</html>





