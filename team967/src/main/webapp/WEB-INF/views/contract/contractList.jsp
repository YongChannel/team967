<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 회사 정보 등록 / 조회</h2>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-1">
                    	<div class="form-group">
	                    	<select id="Select" class="form-control input-sm">
	                            <option>업체코드</option>
	                            <option>업체명</option>
	                        </select>
						</div>
					</div>
					<!-- /.col-lg-1 -->
					
					<div class="col-lg-2">
						<div class="form-group">
							<input type="text" class="form-control input-sm" placeholder="업체코드(업체명) 입력">
						</div>
					</div>
					<!-- /.col-lg-2 -->
					
					<button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button>
					
					<form action="/board/register" method="post">
							<div class="col-lg-2" style="float:right">
						<button class="btn btn-default" onclick="location=windows.open('contract.jsp')" >등록</button>
						<a href="javascript:void(0);" class="btn btn-default" onclick="deleteConfirm();">삭제</a>
						<script>

							function deleteConfirm(){
								
								if(!confirm("삭제 하시겠습니까?")){
									return false;
								}else{
									location.href="${pageContext.request.contextPath }/board/delete.do?board_idx=${boardContents.board_idx}";
								}
							}
							</script>

						
					</div><br>
					<!-- /.col-lg-2 -->
					<br>
					
	          
	            <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">품목 정보 리스트</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <div class="row">
	                <div class="col-lg-12">
	                    <div class="table-responsive">
	                        <table class="table table-bordered table-hover table-striped">
	                        	<thead>
	                                <tr>
	                                	<th class="text-center"><input type="checkbox" value=""></th>
	                                	<th class="text-center">계약번호</th>
	                                    <th class="text-center">업체명</a></th>
	                                	<th class="text-center">사업자 번호</th>
	                                    <th class="text-center">단가</th>
	                                    <th class="text-center">양도/양수 조건</th>
	                                    <th class="text-center">납기일자</th>
	                                </tr>
	                            </thead>
	                            
	                            <tbody> 
	                                <tr>
	                                	<td class="text-center"><input type="checkbox" value=""></td>
	                                	<td>1</td>
	                                    <td>핸드폰</td>
	                                	<td>1</td>
	                                    <td>마이크</td>
	                                    <td></td>
	                                    <td></td>
	                                    
	                                  
	                                </tr>
	                         	</tbody>
							</table>
						</div>
					</div>
				</div>
                
                
                
            </div>
            <!-- /.container-fluid -->
            
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>
    
    
    
</body>

</html>
