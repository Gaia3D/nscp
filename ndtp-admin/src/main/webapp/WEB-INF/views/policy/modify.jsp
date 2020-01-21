<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglib.jsp" %>
<%@ include file="/WEB-INF/views/common/config.jsp" %>

<!DOCTYPE html>
<html lang="${accessibility}">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<title>운영정책 | NDTP</title>
	<link rel="stylesheet" href="/css/${lang}/font/font.css" />
	<link rel="stylesheet" href="/images/${lang}/icon/glyph/glyphicon.css" />
	<link rel="stylesheet" href="/externlib/normalize/normalize.min.css" />
	<link rel="stylesheet" href="/externlib/jquery-ui-1.12.1/jquery-ui.min.css" />
	<link rel="stylesheet" href="/css/fontawesome-free-5.2.0-web/css/all.min.css">
    <link rel="stylesheet" href="/css/${lang}/admin-style.css" />
</head>
<body>
	<%@ include file="/WEB-INF/views/layouts/header.jsp" %>
	<%@ include file="/WEB-INF/views/layouts/menu.jsp" %>
	<div class="site-body">
		<div class="container">
			<div class="site-content">
				<%@ include file="/WEB-INF/views/layouts/sub_menu.jsp" %>
				<div class="page-area">
					<%@ include file="/WEB-INF/views/layouts/page_header.jsp" %>
					<div class="page-content">
						<div class="content-desc u-pull-right"><span class="icon-glyph glyph-emark-dot color-warning"></span><spring:message code='check'/></div>
						<div class="tabs">
							<ul>
								<li><a href="#userTab">사용자</a></li>
								<li><a href="#passwordTab">비밀번호</a></li>
								<li><a href="#noticeTab">알림</a></li>
								<li><a href="#securityTab">보안</a></li>
								<li><a href="#contentTab">컨텐트</a></li>
								<li><a href="#uploadTab">사용자 업로딩 파일</a></li>
							</ul>
							<%@ include file="/WEB-INF/views/policy/modify-user.jsp" %>
							<%@ include file="/WEB-INF/views/policy/modify-password.jsp" %>
							<%@ include file="/WEB-INF/views/policy/modify-notice.jsp" %>
							<%@ include file="/WEB-INF/views/policy/modify-security.jsp" %>
							<%@ include file="/WEB-INF/views/policy/modify-content.jsp" %>
							<%@ include file="/WEB-INF/views/policy/modify-upload.jsp" %>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>

<script type="text/javascript" src="/externlib/jquery-3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/externlib/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/${lang}/common.js"></script>
<script type="text/javascript" src="/js/${lang}/message.js"></script>
<script type="text/javascript" src="/js/navigation.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$( ".tabs" ).tabs();
	});

	var updatPolicyUserFlag = true;
	function updatePolicyUser() {
	    if(updatPolicyUserFlag) {
	        //if( contentsCheck() === false ) return false;

	        updatPolicyUserFlag = false;
	        var formData = $('#policyUser').serialize();
	        $.ajax({
				url: "/policy/modify-user",
				type: "POST",
				headers: {"X-Requested-With": "XMLHttpRequest"},
		        data: formData + "&policyId=${policy.policyId}",
				success: function(msg){
					if(msg.statusCode <= 200) {
						alert("사용자 정책이 수정 되었습니다");
						window.location.reload();
					} else {
						alert(JS_MESSAGE[msg.errorCode]);
						console.log("---- " + msg.message);
					}
					updatPolicyUserFlag = true;
				},
				error:function(request, status, error){
			        alert(JS_MESSAGE["ajax.error.message"]);
			        updatPolicyUserFlag = true;
				}
			});
	    } else {
	        alert("진행 중입니다.");
	        return;
		}
	}

	function updatePolicyPassword() {

	}

	function updatePolicyNotice() {

	}

	function updatePolicySecurity() {

	}

	function updatePolicyContent() {

	}

	function updatePolicyUpload() {

	}

</script>
</body>
</html>