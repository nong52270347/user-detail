
<%@ page import="user.detail.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </sec:ifAnyGranted>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">


            <g:if test="${userInstance?.milId}">
                <li class="fieldcontain">
                    <span id="milId-label" class="property-label"><g:message code="user.milId.label" default="Mil Id" /></span>

                    <span class="property-value" aria-labelledby="milId-label"><g:fieldValue bean="${userInstance}" field="milId"/></span>

                </li>
            </g:if>

			
				<g:if test="${userInstance?.nameTitle}">
				<li class="fieldcontain">
					<span id="nameTitle-label" class="property-label"><g:message code="user.nameTitle.label" default="Name Title" /></span>
					
						<span class="property-value" aria-labelledby="nameTitle-label"><g:fieldValue bean="${userInstance}" field="nameTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.surname}">
				<li class="fieldcontain">
					<span id="surname-label" class="property-label"><g:message code="user.surname.label" default="Surname" /></span>
					
						<span class="property-value" aria-labelledby="surname-label"><g:fieldValue bean="${userInstance}" field="surname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="user.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${userInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.cityId}">
				<li class="fieldcontain">
					<span id="cityId-label" class="property-label"><g:message code="user.cityId.label" default="cityId" /></span>
					
						<span class="property-value" aria-labelledby="cityId-label"><g:fieldValue bean="${userInstance}" field="cityId"/></span>
					
				</li>
				</g:if>
			

			
				<g:if test="${userInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="user.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:fieldValue bean="${userInstance}" field="division"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.section}">
				<li class="fieldcontain">
					<span id="section-label" class="property-label"><g:message code="user.section.label" default="Section" /></span>
					
						<span class="property-value" aria-labelledby="section-label"><g:fieldValue bean="${userInstance}" field="section"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="user.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${userInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.departmentId}">
				<li class="fieldcontain">
					<span id="departmentId-label" class="property-label"><g:message code="user.departmentId.label" default="Department Id" /></span>
					
						<span class="property-value" aria-labelledby="departmentId-label"><g:fieldValue bean="${userInstance}" field="departmentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.abbreviationId}">
				<li class="fieldcontain">
					<span id="abbreviationId-label" class="property-label"><g:message code="user.abbreviationId.label" default="Abbreviation Id" /></span>
					
						<span class="property-value" aria-labelledby="abbreviationId-label"><g:fieldValue bean="${userInstance}" field="abbreviationId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.milPhone}">
				<li class="fieldcontain">
					<span id="milPhone-label" class="property-label"><g:message code="user.milPhone.label" default="Mil Phone" /></span>
					
						<span class="property-value" aria-labelledby="milPhone-label"><g:fieldValue bean="${userInstance}" field="milPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="user.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${userInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="user.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${userInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			

			
				<g:if test="${userInstance?.created}">
				<li class="fieldcontain">
					<span id="created-label" class="property-label"><g:message code="user.created.label" default="Created" /></span>
					
						<span class="property-value" aria-labelledby="created-label"><g:formatDate date="${userInstance?.created}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.ip}">
				<li class="fieldcontain">
					<span id="ip-label" class="property-label"><g:message code="user.ip.label" default="Ip" /></span>
					
						<span class="property-value" aria-labelledby="ip-label"><g:fieldValue bean="${userInstance}" field="ip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.updator}">
				<li class="fieldcontain">
					<span id="updator-label" class="property-label"><g:message code="user.updator.label" default="Updator" /></span>
					
						<span class="property-value" aria-labelledby="updator-label"><g:link controller="user" action="show" id="${userInstance?.updator?.id}">${userInstance?.updator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.updated}">
				<li class="fieldcontain">
					<span id="updated-label" class="property-label"><g:message code="user.updated.label" default="Updated" /></span>
					
						<span class="property-value" aria-labelledby="updated-label"><g:formatDate date="${userInstance?.updated}" /></span>
					
				</li>
				</g:if>
			

			
				<g:if test="${userInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>

                <li class="fieldcontain">
                    <span id="role-label" class="property-label"><g:message code="user.role.label" default="Role" /></span>

                    <span class="property-value" aria-labelledby="role-label">${userInstance.authorities.asList().get(0).label}</span>

                </li>
			
			</ol>

				<fieldset class="buttons">
                    <g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:link class="edit" action="changePassword" id="${userInstance?.id}"><g:message code="default.button.edit.password.label" default="Change Password" /></g:link>
				</fieldset>

		</div>
	</body>
</html>
