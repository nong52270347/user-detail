<%@ page import="user.detail.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-user" class="content scaffold-create" role="main">
    <h1>สร้างผู้ดูแลระบบ</h1>
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
    <g:form action="saveAdmin" >

        <g:hiddenField name="admin" value="true"/>

        <fieldset class="form">
            <%@ page import="user.detail.User" %>


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
                <g:field type="password" name="password" required="" />
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
                <label for="password2">
                    <g:message code="user.password2.label" default="Confirm Password" />
                    <span class="required-indicator">*</span>
                </label>
                <g:field type="password" name="password2" required="" />
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
                <g:select name="gender" from="${user.detail.User$Gender?.values()}" keys="${user.detail.User$Gender.values()*.name()}" required="" value="${userInstance?.gender?.name()}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cityId', 'error')} required">
                <label for="cityId">
                    <g:message code="user.cityId.label" default="cityId" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="cityId" required="" value="${userInstance?.cityId}"/>
            </div>



            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'division', 'error')} required">
                <label for="division">
                    <g:message code="user.division.label" default="Division" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="division" required="" value="${userInstance?.division}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'section', 'error')} required">
                <label for="section">
                    <g:message code="user.section.label" default="Section" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="section" required="" value="${userInstance?.section}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'position', 'error')} required">
                <label for="position">
                    <g:message code="user.position.label" default="Position" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="position" required="" value="${userInstance?.position}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'departmentId', 'error')} required">
                <label for="departmentId">
                    <g:message code="user.departmentId.label" default="Department Id" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="departmentId" required="" value="${userInstance?.departmentId}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'abbreviationId', 'error')} required">
                <label for="abbreviationId">
                    <g:message code="user.abbreviationId.label" default="Abbreviation Id" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="abbreviationId" required="" value="${userInstance?.abbreviationId}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
                <label for="email">
                    <g:message code="user.email.label" default="Email" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="email" required="" value="${userInstance?.email}"/>
            </div>

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'milPhone', 'error')} ">
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


        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>

    </g:form>
</div>
</body>
</html>
