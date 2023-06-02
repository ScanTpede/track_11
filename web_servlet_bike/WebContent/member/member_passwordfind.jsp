<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../common_header.jsp" %>

<script>
	function goPw()
	{
		mem.t_pw.focus();
		
	}
	function memberPassword()
	{
		
		if(checkValue(mem.t_id,"아이디 입력!")) return;
		if(checkValue(mem.t_mobile_1,"전화번호 입력!")) return;
		if(checkValue(mem.t_mobile_2,"전화번호 입력!")) return;
		if(checkValue(mem.t_mobile_3,"전화번호 입력!")) return;
		if(checkValue(mem.t_email,"2메일 입력!")) return;
//		mem.t_gubun.value="memberLoginCheck";
		mem.method="post";
		mem.action="Member?t_gubun=memberPasswordSend";
		mem.submit();
	}
</script>
	
		<div id="b_left">
			<P>MEMBER</P>
			<ul>
				<li><a href="javascript:goWork('memberLogin')">LOGIN</a></li>
				<li><a href="javascript:goWork('memberPasswordFind')"><span class="fnt"><i class="fas fa-apple-alt"></i></span>ID / PASSWORD</a></li>
				<li><a href="javascript:goWork('memberJoin')"> Join</a></li>
			</ul>
		</div>
		
		<div id="b_right">
			<p class="n_title">
				MEMBER PASSWORD FIND
			</p>
		
			<div class="login">
				<div class="member_boxL">
					<h2>PASSWORD FIND</h2>
					<div class="login_form">
						<form name="mem">
							
							<input type="hidden" name="t_gubun" value="login">
							<div class="fl_clear"><label for="mbrId">아이디</label><input name="t_id" id="mbrId" class="t_id" type="text" autofocus onkeypress="if( event.keyCode==13 ){goPw()}"></div>
							<div class="fl_clear"><label for="scrtNo">전화번호</label><input name="t_mobile_1" id="scrtNo" class="t_mobile" type="text" >-<input name="t_mobile_2" id="scrtNo" class="t_mobile" type="text" >-<input name="t_mobile_3" id="scrtNo" class="t_mobile" type="text" ></div>
							<div class="fl_clear"><label for="mbrId">2메일</label><input name="t_email" id="mbrId" class="t_id" type="text" autofocus onkeypress="if( event.keyCode==13 ){goPw()}"></div>
							<a class="btn_login btn_Blue" href="javascript:memberPassword()">비밀번호찾기</a>
						</form>
					</div>
				   
				</div>		
			</div>

		</div>	
	</div>
<%@ include file="../common_footer.jsp" %>