<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>team967</title>

<!-- Bootstrap Core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body>
	<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title text-center"><b>회원가입</b></h2>
                    </div>
                    <div class="panel-body">
						<fieldset>
                            <form action="/board/index" method="post" role="form">
                            	<p>사원번호<button type="button" class="btn btn-link btn-xs" style="float:right">본인확인</button></p>                              
                                <div class="form-group">
                                    <input class="form-control" placeholder="사원번호를 입력하세요." name="employeenum" type="text" autofocus>
                                </div>
                                <p>비밀번호</p>
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호를 입력하세요." name="password" type="password" value="">
                                </div>
								<p>비밀번호 확인</p>
                                <div class="form-group">
                                    <input class="form-control" placeholder="한번 더 입력하세요." name="employeenum" type="text" autofocus>
                                </div>
                                <p>이름</p>
                                <div class="form-group">
                                    <input class="form-control" placeholder="이름을 입력하세요." name="password" type="password" value="">
                                </div>
                                <p>부서</p>
                                <div class="form-group">
                                <select id="Select" class="form-control">
                                	<option selected>부서를 선택하세요.</option>
                                    <option>개발 부서</option>
                                    <option>생산 부서</option>
                                    <option>구매 부서</option>
                                </select>
                                </div>
                                
                                <button type="submit" class="btn btn-success">가입</button>
                                <button type="button" onclick="location.href='/member/login'" class="btn btn-secondary" style="float:right">취소</button>

							</form>
						</fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>
</html>