<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="api26" class="api-help-toggle" style="display: none;">
	<div class="menu_tab">
		<ul>
			<li class="fst active"><a href="#" onclick="tabMenu(0);">Run</a></li>
			<li><a href="#" onclick="tabMenu(1);">Code</a></li>
		</ul>
	</div>
	<div class="menu_tab00 mTs" id="panels">
		<h2>searchDataAPI</h2>
		<p>프로젝트 아이디(projectId)와 데이터 고유키(dataKey)에 해당하는 지도 상의 데이터를 찾아 이동하는
			API입니다.</p>
		<h4>파라미터</h4>
		<table>
			<tr>
				<th>name</th>
				<th>type</th>
				<th>description</th>
			</tr>
			<tr>
				<td>managerFactoryInstance</td>
				<td>ManagerFactory</td>
				<td>mago3D 시작 부분</td>
			</tr>
			<tr>
				<td>projectId</td>
				<td>String</td>
				<td>프로젝트 아이디</td>
			</tr>
			<tr>
				<td>dataKey</td>
				<td>String</td>
				<td>데이터 고유키</td>
			</tr>
		</table>
		<br>
		<h4>실행</h4>
		<div class="paramContainer">
			<p>projectId :</p>
			<input type="text" id="api26-p1" value="sample"><br>
			<p>dataKey :</p>
			<input type="text" id="api26-p2" value="SOCIALROOM">
		</div>
		<br> 
		<input type="button" value="Run" class="popupBtn" onclick="searchData()">
	</div>
	<div class="menu_tab01 mTs" id="panels" style="display: none;"></div>
</div>
<script>
	var searchData = function() {

		var projectId = $('#api26-p1').val();
		var dataKey = $('#api26-p2').val();

		searchDataAPI(MAGO3D_INSTANCE2, projectId, dataKey);
	}
</script>