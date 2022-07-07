<!doctype html>
<html>

<head>
	<title>Kiosk</title>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
	<script src="js/respond.js"></script>
</head>

<body>
	<g:form url="[resource:customerInstance, action:'customerLookup']" >
			<g:render template="kioskForm"/>
	</g:form>
	
	
	<g:javascript library="jquery"/>
	<script src="${resource(dir: 'javascripts', file: 'bootstrap.bundle.js')}></script>
</body>
</html>