<%@ page import="user.detail.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </sec:ifAnyGranted>
            </ul>
		</div>
		<div id="edit-user" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.password.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="updatePassword" method="post" >

				<g:hiddenField name="id" value="${userInstance?.id}" />
				<g:hiddenField name="version" value="${userInstance?.version}" />
				<fieldset class="form">
                    <%@ page import="user.detail.User" %>


                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'oldpassword', 'error')} required">
                        <label for="oldPassword">
                            <g:message code="user.oldPassword.label" default="Old Password" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:field type="password" name="oldPassword" required=""/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
                        <label for="password">
                            <g:message code="user.password.label" default="Password" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:field type="password" name="password" required="" />
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password2', 'error')} required">
                        <label for="password2">
                            <g:message code="user.password2.label" default="Confirm Password" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:field type="password" name="password2" required="" />
                    </div>


                </fieldset>


				<fieldset class="buttons">
					<g:actionSubmit class="save" action="updatePassword" value="${message(code: 'default.button.update.label', default: 'Update')}" />

                </fieldset>
			</g:form>
		</div>
	</body>
</html>
