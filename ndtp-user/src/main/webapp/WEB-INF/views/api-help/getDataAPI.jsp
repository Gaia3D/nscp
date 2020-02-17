<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="api28" class="apihelptoggle" style="display: none;">
	<div class="menu_tab">
		<ul>
			<li class="fst active"><a href="#;" onclick="tab_menu(0);">Run</a></li>
			<li><a href="#;" onclick="tab_menu(1);">Code</a></li>
		</ul>
	</div>
	<div class="menu_tab00 mTs" id="panels">
	<h2>getDataAPI</h2>
	
	<p>data map에 담겨있는 데이터정보(json)를 불러오는 API입니다.</p>
		<h4>파라미터</h4>
		<table>
		<tr><th>name</th><th>type</th><th>description</th></tr>
		<tr><td>dataKey</td><td>String</td><td>데이터 고유키</td></tr>
		</table></br>
		<h4>리턴</h4>
		<table>
		<tr><th>type</th><th>description</th></tr>
		<tr><td>Object</td><td>프로젝트 데이터</td></tr>
		</table></br>
		<h4>실행</h4>
	<div class="paramContainer">
		<p>projectId :</p>
		<input type="text" id="api28-p1" value="sample"></div></br> <input
			type="button" value="Run" class="popupBtn" onclick="getData()">
		<table id="api28-result">결과 :</table>
	</div>

	<div class="menu_tab01 mTs" id="panels" style="display: none;">
		</div>
</div>
<script>
	var getData = function() {

		var p1 = $('#api28-p1').val();

		var r1 = getDataAPI("projectId_"+p1.toString());

		var table = document.getElementById("api28-result");
		table.innerHTML = '';
		for(var i in Object.keys(r1)){
			var row = table.insertRow();
			var th = document.createElement("th");
			var td = document.createElement("td");
			var key = document.createTextNode(Object.keys(r1)[i]);
			var value = document.createTextNode(Object.values(r1)[i]);
			th.appendChild(key);
			td.appendChild(value);
		    row.appendChild(th);
		    row.appendChild(td);
		}

	}
</script>