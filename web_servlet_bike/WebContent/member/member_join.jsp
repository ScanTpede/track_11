<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../common_header.jsp" %>

<script>
	function goJoin()
	{
		
		if(checkValue(join.t_id, "ID 입력!"))
		{
			return;
		}
		

		
		if(checkValue(join.t_name, "성명 입력!"))
		{
			return;
		}
		if(checkValue(join.t_pw_1, "비밀번호 입력!"))
		{
			return;
		}
		if(checkValue(join.t_pw_2, "비밀번호 확인 입력!"))
		{
			return;
		}
		if(join.t_pw_1.value != join.t_pw_2.value)
		{
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다!");
			join.t_pw_1.focus();
			return;
		}
		if(checkValue(join.t_adress, "주소 입력!"))
		{
			return;
		}
		if(checkValue(join.t_mobile_1, "전화번호 입력!"))
		{
			return;
		}
		if(checkValue(join.t_mobile_2, "전화번호 입력!"))
		{
			return;
		}
		if(checkValue(join.t_mobile_3, "전화번호 입력!"))
		{
			return;
		}
		if(checkValue(join.t_gender, "남여구분 입력!"))
		{
			return;
		}
		
		if(join.t_idCheckValue.value =="")
		{
			alert("사용가능한 ID가 아닙니다");
			join.t_id.focus();
			return;
		}
		
		if(join.t_id.value != join.t_idCheckValue.value)
		{
			alert("변경된 ID 중복검사 하세요!");
			join.t_id.focus();
			return;
		}
		
//		if(mem.t_id.value=="")
//		{
//			alert("id입력!")
//			mem.t_id.focus();
//			return;
//		}

		
		join.t_gubun.value="memberSave";
		join.method="post";
		join.action="Member";
		join.submit();
	}
	
	

	function checkID(){
		
		if(checkValue(join.t_id,"ID 입력 후 중복검사 하세요")) return;
		$.ajax({
			type : "POST",
			url : "MemberCheckId",
			data: "t_id="+join.t_id.value,
			dataType : "text",
			error : function(){
				alert('통신실패!!!!!');
			},
			success : function(data){
				var result = $.trim(data);
				alert(result);
				
				join.t_idCheck.value=result;
				
				if(result == "사용가능")
				{
					join.t_idCheckValue.value=join.t_id.value;
					
				}
				else
				{
					join.t_idCheckValue.value= "";
				}
				
				
			}
		});				
	}
</script>


		<div id="b_left">
			<P>MEMBER</P>
			<ul>
				<li><a href="javascript:goWork('memberLogin')">LOGIN</a></li>
				<li><a href="javascript:goWork('memberPasswordFind')">ID / PASSWORD</a></li>
				<li><a href="javascript:goWork('memberJoin')"><span class="fnt"><i class="fas fa-apple-alt"></i></span> JOIN</a></li>
			</ul>
		</div>
		
		<div id="b_right">
			<p class="n_title">
				MEMBER JOIN
			</p>
			<form name="join">
			<table class="boardForm">
			
			  <colgroup>
				<col width="200" />
				<col width="500" />
			  </colgroup>
			  
			  <input type="hidden" name="t_gubun">
			  <tbody>
				<tr>
				  <th><label for="id">I D</label></th>
				  <td>
					<input name="t_id" type="text" size="10" id="id" title="id입력하세요">
					<input type="button" onclick="checkID()" value="ID중복검사" class="checkB">
					<input type="text" style="border:none" readonly name="t_idCheck">
					<input type="text"  readonly name="t_idCheckValue">
					
				  </td>
				</tr>
				<tr>
				  <th><label for="nana">성 명</label></th>
				  <td><input type="text" name="t_name" size="8" id="nana"></td>
				</tr>
				<tr>
				  <th>비빌번호</th>
				  <td><input name="t_pw_1" type="text" size="13"></td>
				</tr>
				<tr>
				  <th>비밀번호확인</th>
				  <td><input type="text" name="t_pw_2" size="13"></td>
				</tr>
				<tr>
				  <th>지역</th>
				  <td>
					<select name="t_area">
						<option value="서울">서울</option>
						<option value="대전">대전</option>
						<option value="부산">부산</option>
						<option value="대구">대구</option>        
					</select>	  
				  </td>
				</tr>	
				
				<tr>
				  <th>주소</th>
				  <td><input name="t_adress" type="text" size="40"></td>
				</tr>
				<tr>
				  <th>연락처</th>
				  <td>
					<input name="t_mobile_1" type="text" size="2"> -
					<input name="t_mobile_2" type="text" size="3"> -
					<input name="t_mobile_3" type="text" size="3">
				  </td>
				</tr>
				<tr>
				  <th>남여구분</th>
				  <td>
					  <input type="radio" value="f" name="t_gender" class="middleCheck" /> 여&nbsp;&nbsp;        
					  <input type="radio" value="m" name="t_gender" class="middleCheck" /> 남        
				  </td>
				</tr>
				<tr>
				  <th>취미</th>
				  <td>
					  <input type="checkbox" value="y" name="t_hobby_travel" class="middleCheck" /> 여행&nbsp;&nbsp; 
					  <input type="checkbox" value="y" name="t_hobby_reading" class="middleCheck" /> 독서&nbsp;&nbsp; 
					  <input type="checkbox" value="y" name="t_hobby_sports" class="middleCheck" /> 운동
				  </td>
				</tr>
			  </tbody>
			  
			</table>
			</form>
			<div class="buttonGroup_center">
				<a href="javascript:goJoin()" class="butt">JOIN</a>
			</div>	
		</div>	
	</div>
<%@ include file="../common_footer.jsp" %>
