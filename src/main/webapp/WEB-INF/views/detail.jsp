<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
	margin-top: 50px;
}

.row {
	margin: 0px auto;
	width: 960px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table">
				<tbody>
					<tr>
						<td width="30%" class="text-center" rowspan="9">
							<img src="${vo.poster}" style="width: 300px; height: 300px; margin-top: 20px;">
						</td>
						<td colspan="2">
							<h3>
								  ${vo.name}&nbsp;<span style="color: orange;">${vo.score}</span>
							</h3>
						</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">주소</td>
						<td width="55%">${vo.address}</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">전화</td>
						<td width="55%">${vo.phone}</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">음식종류</td>
						<td width="55%">${vo.type}</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">가격대</td>
						<td width="55%">${vo.price}</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">영업시간</td>
						<td width="55%">${vo.time}</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">주차</td>
						<td width="55%">${vo.parking}</td>
					</tr>
					<tr>
						<td class="text-center" style="color: gray;" width="15%">테마</td>
						<td width="55%">${vo.theme}</td>
					</tr>
				</tbody>
			</table>
			<table class="table">
				<tr>
					<td>${vo.content}</td>
				</tr>
				<tr>
					<td class="text-right">
						<a href="/find" class="btn btn-sm btn-danger">맛집 검색</a> 
						<a href="/" class="btn btn-sm btn-info">목록</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>