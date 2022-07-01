<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 조달계획 등록 / 조회</h2>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <!-- 품목코드 / 품목명 검색  -->
                <div class="row">
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
					
					<!-- 등록 수정 삭제 버튼 -->
					
					<!-- /.col-lg-2 -->
					
					<button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button>
					
					<div class="col-lg-2" style="float:right">
						<button type="button" class="btn btn-primary">등록</button>
						<button type="button" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-primary">삭제</button>
					</div>
					
					<!-- /.col-lg-2 -->
				</div>
                <!-- /.row -->
                
                
                <!-- 조달계획 등록 -->
                <div class="row" >
	                <div class="col-lg-12">
	                    <div class="table-responsive">
	                        <table class="table table-bordered table-hover table-striped">
	                        	<tbody>
	                                <tr style=background:#344E81;color:white;>
	                                    <th class="text-center" >품목코드</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center" >품목명</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center" >소요량</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                </tr>
	                                
	                                <tr style=background:#344E81;color:white;>
	                                    <th class="text-center" >자재소요공정</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                
	                                    <th class="text-center" >소요일정</th>
	                                    <td><input type="text" class="form-control"></td>
	                                    
	                                    <th class="text-center" >조달납기</th>
	                                    <td><input type="text" class="form-control"></td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <!-- /.table-responsive -->
	                </div>
	                <!-- /.col-lg-4 (nested) -->
	            </div>
	            <!-- /.row -->


            <!-- 조달계획 목록 -->

                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">|&nbsp; 조달계획 목록</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            
                
           <div style="text-align:center">
                <div class="row">
	                <div class="col-lg-12">
	                    <div class="table-responsive">
	                        <table class="table table-bordered table-hover table-striped">
	                        	<thead>
	                                <tr style=background:#344E81;color:white;>
	                                	<th class="text-center"><input type="checkbox" value=""></th>
	                                	<th class="text-center">No</th>
	                                	<th class="text-center">품목코드</th>
	                                    <th class="text-center">품목명</th>
	                                    <th class="text-center">소요량</th>
	                                    <th class="text-center">자재소요공정</th>
	                                    <th class="text-center">소요일정</th>
	                                    <th class="text-center">조달납기</th>
	                                </tr>
	                            </thead>
	                            
	                            <tbody> 
	                                <tr>
	                                	<td style=background:#344E81;color:white; class="text-center"><input type="checkbox" value=""></td>
	                                	<td >1</td>
	                                    <td>123</td>
	                                	<td>가나다</td>
	                                    <td>1</td>
	                                    <td>진척</td>
	                                    <td>2022.06.30</td>
	                                    <td>2022.06.30</td>
	                                </tr>
	                                <tr>
	                                	<td style=background:#344E81;color:white; class="text-center"><input type="checkbox" value=""></td>
	                                	<td>2</td>
	                                    <td>123</td>
	                                	<td>가나다</td>
	                                    <td>1</td>
	                                    <td>진척</td>
	                                    <td>2022.06.30</td>
	                                    <td>2022.06.30</td>
	                                </tr>
	                         	</tbody>
							</table>
						</div>
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
