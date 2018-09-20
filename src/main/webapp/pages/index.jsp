<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/test.css">
</head>
<body>
<h2>Wellcome to English quiz!</h2>

<s:form cssStyle="width:100%;" action="entryTestAction.action" method="POST">
    <s:submit class="submit" value="Click to start the exam..."></s:submit>
</s:form>
</body>
</html>

