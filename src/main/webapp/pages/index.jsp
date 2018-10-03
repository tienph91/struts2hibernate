<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/test.css">
</head>
<body class="body-index">
<h2>Wellcome to English quiz!</h2>
<ul class="ul-index">
    <li>Total number of questions : 10</li>
    <li>Time alloted : 5 minutes</li>
    <li>DO NOT refresh the page</li>
    <li>Try up !</li>
</ul>

<s:form cssStyle="width:100%;" action="entryTestAction.action" method="POST">
    <s:submit class="submit" value="Click to start the exam..."></s:submit>
</s:form>
</body>
</html>

