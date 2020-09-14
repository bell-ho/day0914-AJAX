<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--반응형웹 -->
<link rel="stylesheet" href="../css/bootstrap.css" />
<title>JSP AJAX</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script type="text/javascript">
	var request = new XMLHttpRequest();

	function searchFunction() {
		request
				.open("Post", "./UserSearchServlet?userName="
						+ encodeURIComponent(document
								.getElementById("userName").value), true);
		request.onreadystatechange = searchProcess;
		request.send(null);
	}

	function searchProcess() {
		var table = document.getElementById("ajaxtable");
		console.log(table);
		table.innerHTML = "";
		if (request.readyState == 4 && request.state == 200) {
			var ob = eval('(' + request.responseText + ')');
			var result = ob.result;
			for (var i = 0; i < result.length; i++) {
				var row = table.insertRow(0);
				for (var j = 0; j < result[i].length; i++) {
					var cell = row.insertCell(j);
					cell.innerHTML = result[i][j].value;
				}
			}
		}
	}
</script>
</head>
<body>
	<div class="container">
		<div class="form-group row pull-right">
			<div class="col-xs-8">
				<input type="text" id="userName" onkeyup="searchFunction()"
					class="form-control" size="20" />
			</div>
			<div class="col-xs-2">
				<button class="btn btn-primary" onclick="searchFunction()"
					type="button">검색</button>
			</div>
		</div>
		<table class="table"
			style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #fafafa; text-align: center;">이름</th>
					<th style="background-color: #fafafa; text-align: center;">나이</th>
					<th style="background-color: #fafafa; text-align: center;">성별</th>
					<th style="background-color: #fafafa; text-align: center;">이메일</th>
				</tr>
			</thead>
			<tbody id="ajaxtable">
				<tr>
					<td>홍길동</td>
					<td>11</td>
					<td>남자</td>
					<td>tttt@tttt.com</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
