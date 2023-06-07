<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../common_header.jsp" %>

<script>

		
function goUpdate()
{
	

	

	
	if(checkValue(join.t_name, "성명 입력!"))
	{
		return;
	}

	if(checkValue(join.t_pw_confirm, "비밀번호 확인 입력!"))
	{
		return;
	}
/*
	if(join.t_pw_1.value != join.t_pw_2.value)
	{
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다!");
		join.t_pw_1.focus();
		return;
	}
*/
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

	
//	if(mem.t_id.value=="")
//	{
//		alert("id입력!")
//		mem.t_id.focus();
//		return;
//	}
	alert("1");
	checkPassword();
	
	if (join.t_password_check.value != "yes")
	{
		alert("비밀번호를 입력하세요!");
		join.t_pw_confirm.focus();
		return;
	}
	alert("2");
	
	join.t_gubun.value="memberUpdate";
	join.method="post";
	join.action="Member";
//	join.submit();
}
	
	

function checkPassword(){
	
	
	$.ajax({
		
		type : "POST",
		url : "MemberCheckPassword",
		async : false,
		data: "t_id="+join.t_id.value+"&t_pw="+join.t_pw_confirm.value,
		dataType : "text",
		error : function(){
			alert('통신실패!!!!!');
		},
		success : function(data){
			var result = $.trim(data);
			join.t_password_check.value=result;
			alert(data);
			
		}
		
	});
	
}




//if(mem.t_id.value=="")
//{
//	alert("id입력!")
//	mem.t_id.focus();
//	return;
//}




</script>


		<div id="b_left">
			<P>MEMBER</P>
			<ul>
				<li><a href="javascript:goWork('memberLogin')">LOGIN</a></li>
				<li><a href="javascript:goWork('memberPasswordFind')">ID / PASSWORD</a></li>
				<li><a ><span class="fnt"><i class="fas fa-apple-alt"></i></span> Member</a></li>
			</ul>
		</div>
		
		<div id="b_right">
			<p class="n_title">
				MEMBER Update
			</p>
			<form name="join">
			<table class="boardForm">
			
			  <colgroup>
				<col width="200" />
				<col width="500" />
			  </colgroup>
			  
			  <input type="hidden" name="t_gubun">
			  <input type="hidden" name="t_id" value="${t_dto.getId() }">
			  <input type="text" name="t_password_check" >
			  <tbody>
				<tr>
				  <th><label for="id">I D</label></th>
				  <td>
					${t_dto.getId() }
					
				  </td>
				</tr>
				<tr>
				  <th><label for="nana">성 명</label></th>
				  <td><input type="text" value="${t_dto.getName() }" name="t_name" size="8" id="nana"></td>
				</tr>

				<tr>
				  <th>지역</th>
				  <td>
					<select name="t_area">
						<option value="서울" <c:if test="${t_dto.getArea() eq '서울'  }"> selected </c:if>>서울</option>
						<option value="대전" <c:if test="${t_dto.getArea() eq '대전'  }"> selected </c:if>>대전</option>
						<option value="부산" <c:if test="${t_dto.getArea() eq '부산'  }"> selected </c:if>>부산</option>
						<option value="대구" <c:if test="${t_dto.getArea() eq '대구'  }"> selected </c:if>>대구</option>    
					</select>	  
				  </td>
				</tr>	
				
				<tr>
				  <th>주소</th>
				 	 
				  <td><input name="t_adress" value="${t_dto.getAdress() }" type="text" size="40"></td>
				</tr>
				<tr>
				  <th>연락처</th>
				  <td>
					<input name="t_mobile_1" value="${t_dto.getMobile_1() }" type="text" size="2"> -
					<input name="t_mobile_2" value="${t_dto.getMobile_2() }" type="text" size="3"> -
					<input name="t_mobile_3" value="${t_dto.getMobile_3() }" type="text" size="3">
				  </td>
				</tr>
				<tr>
				  <th>남여구분</th>
				  <td>
					  <input type="radio" value="f" name="t_gender" class="middleCheck" <c:if test="${t_dto.getGender() eq 'f' }">checked</c:if> /> 여&nbsp;&nbsp;        
					  <input type="radio" value="m" name="t_gender" class="middleCheck"<c:if test="${t_dto.getGender() eq 'm' }">checked</c:if> /> 남        
				  </td>
				</tr>
				<tr>
				  <th>취미</th>
				  <td>
					  <input type="checkbox" value="y" name="t_hobby_travel" class="middleCheck" <c:if test="${t_dto.getHobby_travel() eq 'y' }">checked</c:if> /> 여행&nbsp;&nbsp; 
					  <input type="checkbox" value="y" name="t_hobby_reading" class="middleCheck" <c:if test="${t_dto.getHobby_reading() eq 'y' }">checked</c:if> /> 독서&nbsp;&nbsp; 
					  <input type="checkbox" value="y" name="t_hobby_sports" class="middleCheck" <c:if test="${t_dto.getHobby_sports() eq 'y' }">checked</c:if> /> 운동
				  </td>
				</tr>

				<tr>
				  <th><label for="id">회원가입일</label></th>
				  <td>
					${t_dto.getReg_date() }
					
				  </td>
				</tr>
				<tr>
				  <th><label for="id">최종정보수정일</label></th>
				  <td>
					${t_dto.getUpdate_date() }
					
				  </td>
				</tr>
				<tr>
				  <th><label for="id">최근로그인</label></th>
				  <td>
					${t_dto.getLast_login_date() }
					
				  </td>
				</tr>
				<tr>
				  <th>비빌번호확인</th>
				  <td><input name="t_pw_confirm" type="text" size="13"></td>
				</tr>												
			  </tbody>
			  
			  
			</table>
			</form>
			<div class="buttonGroup_center">
				<a href="javascript:goUpdate()" class="butt">Update</a>
			</div>	
		</div>	
	</div>
<%@ include file="../common_footer.jsp" %>
