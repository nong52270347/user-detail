
<%@ page import="user.detail.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
            <fieldset class="form">
                <g:form action="list" method="get">
                    <g:textField name="q" value="ศทท" placeholder="ค้นหา..."/>
                    <g:submitButton name="ค้นหา"/>
                </g:form>
            </fieldset>

            <a href="">สง.ผบ.ทบ.</a>
            <a href="">สง.รอง ผบ.ทบ.</a>
            <a href="">สง.ผช.ผบ.ทบ. (1)</a>
            <a href="">สง.ผช.ผบ.ทบ. (2)</a>
            <a href="">สง.เสธ.ทบ.</a>

            <a href="">สง.รอง เสธ.ทบ. (1)</a>
            <a href="">สง.รอง เสธ.ทบ. (2)</a>
            <a href="">สง.รอง เสธ.ทบ. (3)</a>
            <a href="">สง.รอง เสธ.ทบ. (4)</a>
            <a href="">สง.รอง เสธ.ทบ. (5)</a>

            <a href="">สลก.ทบ.</a>
            <a href="">กพ.ทบ.  กรมกำลังพลทหารบก</a>
            <a href="">ขว.ทบ.   กรมข่าวทหารบก</a>
            <a href="">ยก.ทบ.   กรมยุทธการทหารบก</a>
            <a href="">กบ.ทบ.  กรมส่งกำลังบำรุงทหารบก</a>

            <a href="">กร.ทบ.   กรมกิจการพลเรือนทหารบก</a>
            <a href="">สปช.ทบ.  สำนักงานปลัดบัญชีทหารบก</a>
            <a href="">สบ.ทบ.  กรมสารบรรณทหารบก</a>
            <a href="">กง.ทบ.  กรมการเงินทหารบก</a>
            <a href="">ศทท.   ศูนย์เทคโนโลยีทางทหาร</a>

            <a href="">ฝกพ.ศปก.ทบ.</a>
            <a href="">ฝขว.ศปก.ทบ.</a>
            <a href="">ฝยก.ศปก.ทบ.</a>
            <a href="">ฝกบ.ศปก.ทบ.</a>
            <a href="">ฝกร.ศปก.ทบ.</a>

            <a href="">สปช.ศปก.ทบ.</a>
            <a href="">ศปก.ทบ.</a>
            <a href="">สง.ที่ปรึกษา</a>
            <a href="">สสน.บก.ทบ.</a>



            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>


            <table>
				<thead>
					<tr>

						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'UserName')}" />



						<g:sortableColumn property="nameTitle" title="${message(code: 'user.nameTitle.label', default: 'Name Title')}" />

						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />

						<g:sortableColumn property="surname" title="${message(code: 'user.surname.label', default: 'Surname')}" />
					
						<g:sortableColumn property="departmentId" title="${message(code: 'user.departmentId.label', default: 'departmentId')}" />
					
					</tr>
				</thead>
				<tbody>
				%{--<g:each in="${userInstanceList}" status="i" var="userInstance">--}%
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>


						<td>${fieldValue(bean: userInstance, field: "nameTitle")}</td>

						<td>${fieldValue(bean: userInstance, field: "name")}</td>

						<td>${fieldValue(bean: userInstance, field: "surname")}</td>

						<td>${fieldValue(bean: userInstance, field: "departmentId")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate action="list" total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
