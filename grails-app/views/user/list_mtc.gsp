
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
                <li><a class="list" href="list">ค้นหา</a></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">


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
				<g:each in="${User.findAllByDepartmentId("ศทท.")}" status="i" var="userInstance">
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
		</div>
	</body>
</html>
