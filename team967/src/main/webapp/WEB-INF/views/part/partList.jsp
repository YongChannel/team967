<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 품목 정보 등록 / 조회</h2>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                
                <div class="row">
                	<div class="col-lg-12">
	                    <div class="col-lg-1">
	                    	<div class="form-group">
		                    	<select id="Select" class="form-control input-sm">
		                            <option>품목코드</option>
		                            <option>품목명</option>
		                        </select>
							</div>
						</div>
						<!-- /.col-lg-1 -->
						
						<div class="col-lg-2">
							<div class="form-group">
								<input type="text" class="form-control input-sm">
							</div>
						</div>
						<!-- /.col-lg-2 -->
						
						<button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button>
						

						<form action="/board/register" method="post">
							<div class="col-lg-2" style="float:right">
								<button type="submit" class="btn btn-success">등록</button>
								<button type="button" class="btn btn-info">수정</button>
								<button type="button" class="btn btn-warning">삭제</button>
							</div><br>
							<!-- /.col-lg-2 -->
	
							<br>
							<div class="table-responsive" style="width:100%">
		                        <table class="table table-bordered table-hover table-striped">
		                        	<tbody>
		                                <tr>
		                                    <th class="text-center">제품명</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
		                                    <th class="text-center">품목코드</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
		                                    <th class="text-center">품목명</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
		                                    <th class="text-center">약칭</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
		                                    <th class="text-center">품목구분</th>
		                                    <td><input type="text" class="form-control"></td>
		                                </tr>
		                                	                                
										<tr>
		                                    <th class="text-center">도면번호</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
		                                    <th class="text-center"><b>도면 IMG</b></th>
		                                    <td><input type="file"></td>
		                                    
		                                    <th class="text-center">공용여부</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
		                                    <th class="text-center">품목설명</th>
		                                    <td><input type="text" class="form-control"></td>
		                                    
											<td colspan="2"></td>
		                                </tr>
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- /.table-responsive -->
						</form>
							
					</div>
					<!-- /.col-lg-12 -->

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
	                                    <th class="text-center">제품명</th>
	                                	<th class="text-center">품목코드</th>
	                                    <th class="text-center">품목명</th>
	                                    <th class="text-center">약칭</th>
	                                    <th class="text-center">품목구분</th>
	                                    <th class="text-center">도면번호</th>
	                                    <th class="text-center">도면 IMG</th>
	                                    <th class="text-center">공용여부</th>
	                                    <th class="text-center">품목설명</th>
	                                </tr>
	                            </thead>
	                            
	                            <tbody>
	                            <c:forEach var="part" items="${list}">
	                                <tr>
	                                	<td class="text-center"><input type="checkbox" value=""></td>
	                                    <td>${part.ProductName}</td>
	                                	<td>${part.PartCode}</td>
	                                    <td>${part.PartName}</td>
	                                    <td>${part.NickName}</td>
	                                    <td>${part.Library}</td>
	                                    <td>${part.Drw_No}</td>
	                                    <td>${part.Drw_Img}</td>
	                                    <td>${part.Common}</td>
	                                    <td>${part.Remark}</td>
	                                </tr>
	                            </c:forEach>
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
