
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
            <br/>
            <h2>หน่วยงานกองทัพบก</h2>
            <br/>
            <ol style="">
                <li><a href="list_command1">สง.ผบ.ทบ.</a></li>
                <li><a href="list_command2">สง.รอง ผบ.ทบ.</a></li>
                <li><a href="list_command3">สง.ผช.ผบ.ทบ. (1)</a></li>
                <li><a href="list_command4">สง.ผช.ผบ.ทบ. (2)</a></li>
                <li><a href="list_command5">สง.เสธ.ทบ.</a></li>

                <li><a href="list_command6">สง.รอง เสธ.ทบ. (1)</a></li>
                <li><a href="list_command7">สง.รอง เสธ.ทบ. (2)</a></li>
                <li><a href="list_command8">สง.รอง เสธ.ทบ. (3)</a></li>
                <li><a href="list_command9">สง.รอง เสธ.ทบ. (4)</a></li>
                <li><a href="list_command10">สง.รอง เสธ.ทบ. (5)</a></li>

                <li><a href="list_secretary">สลก.ทบ.</a></li>
                <li><a href="list_personnel">กพ.ทบ.</a></li>
                <li><a href="list_intelligence">ขว.ทบ.</a></li>
                <li><a href="list_operation">ยก.ทบ. </a></li>
                <li><a href="list_logistics">กบ.ทบ. </a></li>

                <li><a href="list_civil_affairs">กร.ทบ. </a></li>
                <li><a href="list_accountant">สปช.ทบ. </a></li>
                <li><a href="list_adj">สบ.ทบ. </a></li>
                <li><a href="list_finance">กง.ทบ. </a></li>
                <li><a href="list_mtc">ศทท. </a></li>

                <li><a href="list_personnel_center">ฝกพ.ศปก.ทบ.</a></li>
                <li><a href="list_intelligence_center">ฝขว.ศปก.ทบ.</a></li>
                <li><a href="list_operation_center">ฝยก.ศปก.ทบ.</a></li>
                <li><a href="list_logistic_center">ฝกบ.ศปก.ทบ.</a></li>
                <li><a href="list_civil_affairs_center">ฝกร.ศปก.ทบ.</a></li>

                <li><a href="list_accountant_center">สปช.ศปก.ทบ.</a></li>
                %{--<li><a href="">ศปก.ทบ.</a></li>--}%
                %{--<li><a href="">สง.ที่ปรึกษา</a></li>--}%
                %{--<li><a href="">สสน.บก.ทบ.</a></li>--}%
            </ol>


            
		</div>
	</body>
</html>
