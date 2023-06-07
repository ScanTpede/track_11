<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common_header.jsp" %>

<html>
<head>

	
		<div id="b_left">
			<%@include file="../common_menu.jsp" %>
		</div>
		
		<div id="b_right">
			<p class="n_title">
				NOTICE
			</p>
			
			<table class="boardForm">
				<colgroup>
					<col width="15%">
					<col width="55%">
					<col width="10%">
					<col width="20%">
				</colgroup>
				<tbody>
					<tr>
						<th>Title</th>
						<td colspan="2">${t_dto.getTitle()}</td>
						<td> <i class="far fa-eye"></i>${t_dto.getHit()}</td>
					</tr>	
					<tr>
						<th>Content</th>
						<td colspan="3">
							<textarea class="textArea_H250_noBorder" readonly>${t_dto.getContent()}</textarea>
						</td>
					</tr>	
					<tr>
						<th>Attach</th>
						<td colspan="3">${t_dto.getAttach()}</td>
					</tr>	
					<tr>
						<th>Writer</th>
						<td>${t_dto.getReg_name()}</td>
						<th>RegDate</th>
						<td>${t_dto.getReg_date()}</td>
					</tr>	

				</tbody>
			</table>
			<div class="preNext">
				<a href="javascript:goView('N002')">
					<p class="pre"><span><i class="fa-solid fa-circle-arrow-left"></i> 이전글</span> 
						<span class="preNextTitle">
									<!--  
									<c:if test="${fn:length(t_preDto.getTitle()) > 15}">
										${fn:substring(t_preDto.getTitle(),0,15)}...
									</c:if>
									-->
									<c:choose >
										<c:when test="${fn:length(t_preDto.getTitle()) > 15}"> 
											${fn:substring(t_preDto.getTitle(),0,15)}...
										</c:when> 
										<c:otherwise>
											${t_preDto.getTitle()}
										</c:otherwise>
									</c:choose>
						</span>
					</p>
				</a>
				<a href="javascript:goView('N004')">
					<p class="next"><span>다음글 <i class="fa-solid fa-circle-right"></i></span>
						<span class="preNextTitle">
									<c:choose >
										<c:when test="${fn:length(t_nextDto.getTitle()) > 15}"> 
											${fn:substring(t_nextDto.getTitle(),0,15)}...
										</c:when> 
										<c:otherwise>
											${t_nextDto.getTitle()}
										</c:otherwise>
									</c:choose>
						</span>
					</p>
				</a>
				
			</div>			
			<div class="buttonGroup">
				<a href="" class="butt">Delete</a>
				<a href="notice_update.html" class="butt">Update</a>
				<a href="notice_list.html" class="butt">List</a>
			</div>	
		</div>	
	</div>
		<%@ include file="../common_footer.jsp" %>
</body>
</html>