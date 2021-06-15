<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>RFQ</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		
		<!-- swiper -->
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		
		<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
				
		<script type="text/javascript" src="../assets/js/jquery.min.js"></script>
		<script type="text/javascript">
		$(function(){
			$('form[name=frmJoin]').submit(function(){
				if($('#name').val().length<1){
					alert('이름을 입력하세요.');
					$('#name').focus();
					event.preventDefault();
				}else if($('#userid').val().length<1){
					alert('아이디를 입력하세요.');
					$('#userid').focus();
					event.preventDefault();
				}else if($('#pwd').val().length<1){
					alert('비밀번호를 입력하세요.');
					$('#pwd').focus();
					event.preventDefault();
				}else if($('#pwd').val()!=$('#pwd2').val()){
					alert('비밀번호가 일치하지 않습니다.');
					$('#pwd2').focus();
					event.preventDefault();
				}else if(!validate_hp($('#hp2').val()) 
						|| !validate_hp($('#hp3').val())){
					alert('전화번호는 숫자만 가능합니다.');
					$('#hp2').focus();
					event.preventDefault();
				}else if($('#chkId').val()!='Y'){
					alert('중복확인을 해야합니다.');
					$('#btnChkId').focus();
					event.preventDefault();
				}

				$('#email2').change(function(){
					if($(this).val()=='etc'){
						$('#email3').val("");
						$('#email3').css('visibility','visible');
						$('#email3').focus();
					}else{
						$('#email3').css('visibility','hidden');
					}
				});
			});
			
			window.chkIds = function(){
				window.open('checkUserid.jsp?userid='+$('#userid').val(),'chk','width=400,height=300,left=0,top=0,location=yes,resizable=yes');
			}
			
			window.chkZipcode = function(){
				window.open('../zipcode/zipcode.jsp','zipcodeChk','width=500,height=550,left=0,top=0,location=yes,resizable=yes');
			}
			
			function validate_hp(hp){
				var pattern = new RegExp(/^[0-9]*$/g);
				return pattern.test(hp);
			}
		});
		</script>
		
		<!-- 사용자 정의 css -->
		<style type="text/css">
			#formCon {
				position: relative;
			    display: -webkit-inline-box;
		    }
		    button#btnChkId {
		    	margin-bottom: 0;
		    }
		    button#btnZipcode {
		    	margin-bottom: 0;
		    }
		    input#pwd {
		    	width: 50%;
		    }
		    input#pwd2 {
		    	width: 50%;
		    }
		    input#address {
			    width: 100%;
			    margin-top: 5px;
			    margin-bottom: 8px;
			}
		    input#addressDetail {
			    width: 100%;
			}
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<%@ include file="../inc/header.jsp" %>

			<!-- Main -->
				<section id="main_map">
					<div class="container" style="text-align:center;">
						<div id="map_title">
							<h2><b>회원가입</b></h2>
						</div>
						<div id="formCon">
						<div style="text-align:justify;">
							<form name="frmJoin" method="post" action="<%=request.getContextPath() %>/member/join_ok.jsp">
								<div>        
							        <label for="name">성명</label><br>
							        <input type="text" name="name" id="name" style="ime-mode:active">
							    </div>
							    <br>
							    <div>
							        <label for="userid">아이디</label><br>
							        <input type="text" name="userid" id="userid"
							        		style="ime-mode:inactive">&nbsp;
							        <Button type="button" class="question" id="btnChkId" title="새창열림" onclick="chkIds()">중복확인</Button>
							    </div>
							    <br>
							    <div>
							        <label for="pwd">비밀번호</label><br>
							        <input type="Password" name="pwd" id="pwd">
							    </div>
							    <br>
							    <div>
							        <label for="pwd2">비밀번호 확인</label><br>
							        <input type="Password" name="pwd2" id="pwd2">
							    </div>
							    <br>
							    <div>
							        <label for="zipcode">주소</label><br>
							        <input type="text" name="zipcode" id="zipcode" ReadOnly  
							        	title="우편번호">&nbsp;
							        <Button type="button" class="question" id="btnZipcode" title="새창열림" onclick="chkZipcode()">우편번호 찾기</Button>
							        <input type="text" name="address" id="address" title="주소"><br />
							    </div>
							    <br>
							    <div>
							        <label for="hp1">핸드폰</label><br>
							        <select name="hp1" id="hp1" title="휴대폰 앞자리">
							            <option value="010">010</option>
							            <option value="011">011</option>
							            <option value="016">016</option>
							            <option value="017">017</option>
							            <option value="018">018</option>
							            <option value="019">019</option>
							       	</select>
							        -
							        <input type="text" name="hp2" id="hp2" maxlength="4" title="휴대폰 가운데자리"
							        	class="width_80">-
							        <input type="text" name="hp3" id="hp3" maxlength="4" title="휴대폰 뒷자리"
							        	class="width_80">
							    </div>
							    <br>
							    <div>
							        <label for="email1">이메일 주소</label><br>
							        <input type="text" name="email1"  id="email1" title="이메일주소 앞자리">@
							        <select name="email2" id="email2"  title="이메일주소 뒷자리">
							            <option value="naver.com">naver.com</option>
							            <option value="hanmail.net">hanmail.net</option>
							            <option value="nate.com">nate.com</option>
							            <option value="gmail.com">gmail.com</option>
							            <option value="etc">직접입력</option>
							        </select>
							        <input type="text" name="email3" id="email3" title="직접입력인 경우 이메일주소 뒷자리"
							        	style="visibility:hidden">
							    </div>
								<br>
								<div style="text-align: center">
									<input type="submit" class="question" id="submit" value="가입">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="../index.jsp"><input type="button" class="back" id="back" value="취소"></a>
								</div>
								<input type ="hidden" name="chkId" id="chkId">
							</form>
						</div>
						</div>
					</div>
				</section>

			<%@ include file="../inc/footer.jsp"%>
		</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

	</body>
</html>