<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../common_header.jsp" %>

<script>
	function goPw()
	{
		mem.t_change_pw_1.focus();
		
	}
	function goPw2()
	{
		mem.t_change_pw_2.focus();
		
	}
	function memberLogin()
	{
		if(checkValue(mem.t_id,"아이디 입력!")) return;
		if(checkValue(mem.t_pw,"비밀번호 입력!")) return;
//		mem.t_gubun.value="memberLoginCheck";
		mem.method="post";
		mem.action="Member?t_gubun=memberLoginCheck";
		mem.submit();
		
	}
	function passwordChange()
	{
		
		if(checkValue(mem.t_now_pw,"현재 비밀번호 입력!")) return;
		if(checkValue(mem.t_change_pw_1,"새 비밀번호 입력!")) return;
		if(checkValue(mem.t_change_pw_2,"새 비밀번호 확인 입력!")) return;
		if(mem.t_change_pw_1.value != mem.t_change_pw_2.value)
		{
			alert("비밀번호가 같지 않습니다");
			mem.t_change_pw_1.focus();
			return;
		}
//		mem.t_gubun.value="memberLoginCheck";
		mem.method="post";
		mem.action="Member?t_gubun=memberPasswordUpdate";
		mem.submit();
	}
</script>
	
		<div id="b_left">
			<P>MEMBER</P>
			<ul>
				<li><a href="javascript:goWork('memberLogin')"></i>LOGIN</a></li>
				<li><a href="javascript:goWork('memberPasswordFind')">ID / PASSWORD</a></li>
				<li><span class="fnt"><i class="fas fa-apple-alt"></span><a > Member</a></li>
			</ul>
		</div>
		
		<div id="b_right">
			<p class="n_title">
				MEMBER CHANGE PASSWORD
			</p>
		
			<div class="login">
				<div class="member_boxL">
					<h2>PASSWORD</h2>
					<div class="login_form">
						<form name="mem">
							
							<input type="hidden" name="t_gubun" value="login">
							<div class="fl_clear"><label for="mbrId" class="pwlabel">현재 비밀번호</label><input name="t_now_pw" id="mbrId" type="text" autofocus onkeypress="if( event.keyCode==13 ){goPw()}"></div>
							<div class="fl_clear"><label for="scrtNo" class="pwlabel">새 비밀번호</label><input name="t_change_pw_1" id="scrtNo" type="password" onkeypress="if( event.keyCode==13 ){goPw2()}"></div>
							<div class="fl_clear"><label for="scrtNo" class="pwlabel">새 비밀번호 확인</label><input name="t_change_pw_2" id="scrtNo" type="password" onkeypress="if( event.keyCode==13 ){passwordChange()}"></div>
							<a class="btn_login btn_Blue pwButton"  href="javascript:passwordChange()">비밀번호변경</a>
						</form>
					</div>
				   
				</div>		
			</div>

		</div>	
	</div>
<%@ include file="../common_footer.jsp" %>