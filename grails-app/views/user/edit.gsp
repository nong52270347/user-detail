<%@ page import="org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils; user.detail.Role; user.detail.User" %>
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
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			<g:form method="post" >
				<g:hiddenField name="id" value="${userInstance?.id}" />
				<g:hiddenField name="version" value="${userInstance?.version}" />
				<fieldset class="form">
                    <%@ page import="user.detail.User" %>



                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cityId', 'error')} required">
                        <label for="cityId">
                            <g:message code="user.cityId.label" default="cityId" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="cityId" required="" value="${userInstance?.cityId}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'milId', 'error')} required">
                        <label for="milId">
                            <g:message code="user.milId.label" default="Mil Id" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="milId" required="" value="${userInstance?.milId}"/>
                    </div>


                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
                        <label for="password">
                            <g:message code="user.password.label" default="Password" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:field type="password" name="password" required="" value="${userInstance?.password}"/>
                    </div>



                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nameTitle', 'error')} required">
                        <label for="nameTitle">
                            <g:message code="user.nameTitle.label" default="Name Title" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="nameTitle" required="" value="${userInstance?.nameTitle}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
                        <label for="name">
                            <g:message code="user.name.label" default="Name" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="name" required="" value="${userInstance?.name}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'surname', 'error')} required">
                        <label for="surname">
                            <g:message code="user.surname.label" default="Surname" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="surname" required="" value="${userInstance?.surname}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} required">
                        <label for="gender">
                            <g:message code="user.gender.label" default="Gender" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:select name="gender" from="${user.detail.User$Gender?.values()}" keys="${user.detail.User$Gender.values()*.name()}" required="" value="${userInstance?.gender?.name()}" valueMessagePrefix="user.gender"/>
                    </div>


                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'departmentId', 'error')} required">
                        <label for="departmentId">
                            <g:message code="user.departmentId.label" default="Department Id" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="departmentId" required="" value="${userInstance?.departmentId}"/>
                    </div>




                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'division', 'error')}">
                        <label for="division">
                            <g:message code="user.division.label" default="Division" />
                        </label>
                        <g:textField name="division"  value="${userInstance?.division}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'section', 'error')}">
                        <label for="section">
                            <g:message code="user.section.label" default="Section" />
                        </label>
                        <g:textField name="section"  value="${userInstance?.section}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'position', 'error')}">
                        <label for="position">
                            <g:message code="user.position.label" default="Position" />
                        </label>
                        <g:textField name="position"  value="${userInstance?.position}"/>
                    </div>



                    %{--<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'abbreviationId', 'error')}">--}%
                    %{--<label for="abbreviationId">--}%
                    %{--<g:message code="user.abbreviationId.label" default="Abbreviation Id" />--}%
                    %{--</label>--}%
                    %{--<g:textField name="abbreviationId" required="" value="${userInstance?.abbreviationId}"/>--}%
                    %{--</div>--}%

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')}">
                        <label for="email">
                            <g:message code="user.email.label" default="Email" />
                        </label>
                        <g:textField name="email"  value="${userInstance?.email}"/>
                    </div>


                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'milPhone', 'error')}">
                        <label for="milPhone">
                            <g:message code="user.milPhone.label" default="Mil Phone" />
                        </label>
                        <g:textField name="milPhone" value="${userInstance?.milPhone}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} ">
                        <label for="phone">
                            <g:message code="user.phone.label" default="Phone" />

                        </label>
                        <g:textField name="phone" value="${userInstance?.phone}"/>
                    </div>

                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mobilePhone', 'error')} ">
                        <label for="mobilePhone">
                            <g:message code="user.mobilePhone.label" default="Mobile Phone" />

                        </label>
                        <g:textField name="mobilePhone" value="${userInstance?.mobilePhone}"/>
                    </div>



                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'authorities', 'error')} required">
                        <label for="role">
                            <g:message code="user.role.label" default="Role" />
                            <span class="required-indicator">*</span>
                        </label>

                        <g:if test="${SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN') && userInstance?.id != sec.loggedInUserInfo(field: 'id').asType(Long)}">
                            <g:select name="role" from="${Role.all}" optionKey="id" optionValue="label" required="" value="${params.role ?: userInstance.authorities.asList().get(0).id}" />
                        </g:if>
                        <g:else>
                            ${userInstance.authorities.asList().get(0).label}
                        </g:else>

                    </div>


                </fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <sec:ifAnyGranted roles="ROLE_ADMIN">
                        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </sec:ifAnyGranted>
                </fieldset>
			</g:form>
		</div>
	</body>
</html>
