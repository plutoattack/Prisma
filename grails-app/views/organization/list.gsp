
<%@ page import="prisma.Organization"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'organization.label', default: 'Organization')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-organization" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-organization" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="label"
						title="${message(code: 'organization.label.label', default: 'Label')}" />

					<g:sortableColumn property="active"
						title="${message(code: 'organization.active.label', default: 'Active')}" />

					<g:sortableColumn property="latinName"
						title="${message(code: 'organization.latinName.label', default: 'Latin Name')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${organizationInstanceList}" status="i"
					var="organizationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${organizationInstance.id}">
								${fieldValue(bean: organizationInstance, field: "label")}
							</g:link></td>

						<td><g:formatBoolean boolean="${organizationInstance.active}" /></td>

						<td>
							${fieldValue(bean: organizationInstance, field: "latinName")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${organizationInstanceTotal}" />
		</div>
	</div>
</body>
</html>
