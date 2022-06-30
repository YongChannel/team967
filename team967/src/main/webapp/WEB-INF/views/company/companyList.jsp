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
					
					<div class="col-lg-2" style="float:right">
						<button type="button" class="btn btn-success">등록</button>
						<button type="button" class="btn btn-info">수정</button>
						<a href="javascript:void(0);" class="btn btn-danger" onclick="deleteConfirm();">삭제</a>
						<script>

							function deleteConfirm(){
								
								if(!confirm("삭제 하시겠습니까?")){
									return false;
								}else{
									location.href="${pageContext.request.contextPath }/board/delete.do?board_idx=${boardContents.board_idx}";
								}
							}
							
							</script>

						
					</div>
					<!-- /.col-lg-2 -->
				</div>
                <!-- /.row -->
                
                <div class="row">
	                <div class="col-lg-12">
	                    <div class="table-responsive">
	                        <table class="table table-bordered table-hover table-striped">
	                        	<tbody>
	                                <tr>
	                                    <th class="text-center">업체코드</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center">세무코드</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center">사업자번호</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center">업체명</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center">대표자명</th>
	                                    <td><input type="text" class="form-control"></td>
	                                </tr>
	                                
									<tr>
	                                    <th class="text-center">대표자 연락처</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center"><b>회사 정보</b></th>
	                                     <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center">업체규모</th>
	                                   		 <td><select id="Select" class="form-control input-sm">
	                           			 			<option>대기업</option>
	                           						<option>중소기업</option>
	                        				</select></td>
	                                    
	                                    <th class="text-center">업태분류</th>
	                                   		<td> <select id="Select" class="form-control input-sm">
	                           			 			<option>도매</option>
	                           						<option>소매</option>
	                        				</select></td>
	                        				
	                                   <th class="text-center">계좌정보</th>
	                                    <td><input type="text" class="form-control"></td>
										
	                                </tr>
	                                
	                                <tr>
	                                    <th class="text-center">매출액 규모</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center"><b>거래형태</b></th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center">내외자 구분</th>
	                                   <td><select id="Select" class="form-control input-sm">
	                           			 			<option>내자</option>
	                           						<option>외자</option>
	                        				</select></td>
	                        				
	                                    <th class="text-center">결제통화</th>
	                                    <td><select id="Select" class="form-control input-sm">
	                                    			<option>원화</option>
	                           			 			<option>달러</option>
	                           			 			<option>엔화</option>
	                           			 			<option>위안</option>
	                           						<option>유로</option>
	                        				</select>
	                        				</td>
	                        				 <th class="text-center" >계산서 발행여부</th>
	                                    <td><select id="Select" class="form-control input-sm">
	                                    			<option>발행</option>
	                           			 			<option>미발행</option>
	                        				</select>
	                                     
									</div>
	                                    </td>
	                                    
	                                </tr>
	                                
	                                <th class="text-center" >거래개시일</th>
								<td><input type="date" name="startDate" id="startDate"></td>
			                                   
	                        				<th class="text-center"><b>거래종료일</b></th>
										<td><input type="date" name="startDate" id="endDate"></td>
										
										<th class="text-center" rowspan="3" ></th>
	                                   
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <!-- /.table-responsive -->
	                </div>
	                <!-- /.col-lg-4 (nested) -->
	            </div>
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
	                                	<th class="text-center">No</th>
	                                    <th class="text-center">업체코드</th>
	                                	<th class="text-center">세무코드</th>
	                                    <th class="text-center">사업자 번호</th>
	                                    <th class="text-center">업체명</th>
	                                    <th class="text-center">대표자명</th>
	                                    <th class="text-center">대표자 연락처</th>
	                                    <th class="text-center">회사정보</th>
	                                    <th class="text-center">업체규모</th>
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
	                                    <td></td>
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
