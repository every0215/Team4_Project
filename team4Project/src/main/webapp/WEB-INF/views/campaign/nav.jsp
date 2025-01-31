<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<style>
#queryBtn {
	margin-left: 20px;
}
</style>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- Brand/logo -->
	<a class="navbar-brand" href="<c:url value="/"/>">活動後台</a>	
	<!-- Links -->
	<ul class="navbar-nav">

		<li class="nav-item"><a class="nav-link"
			href="<c:url value="/bo/campaign/show"/>">查看活動</a></li>
		<li class="nav-item"><a class="nav-link"
			href="<c:url value="/CampaignAdd"/>">新增活動</a></li>
	</ul>	
	<form style="margin-left: 20px" class="form-inline"
		action="<c:url value="/CampaignQueryServlet"/>">
		<input name="queryStr" class="form-control mr-sm-2" type="text"
			placeholder="查詢活動">
		<div class="form-group">
			<select class="form-control" name="queryType">
				<option value="all">選擇查詢類型</option>
				<option value="title">名稱</option>
				<option value="description">描述</option>
			</select>
		</div>
		<button id="queryBtn" class="btn btn-success" type="submit">查詢</button>

	</form>

</nav>
