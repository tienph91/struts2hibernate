<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test exam!!!</title>
<link rel="stylesheet" type="text/css" href="css/test.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body onload="f1" class="body-test">
    <h1>Test</h1>

	<s:if test="%{count !=null }">
		<p class="correct">
			Answer correct
			<s:property value="count" />
		</p>
	</s:if>

	<div id="divTabContent" class="container"
		style="width: 100%; display: block; margin-left: 30px; margin-top: 20px;"
		class="mx-none">
		<s:if test="%{count ==null }">
			<div id="clock" class="div-clock">Start</div>
		</s:if>

		<div class="bix-div-container">

			<s:form action="testAction">
				<s:iterator value="listQuestion" var="question" status="st">
					<s:hidden key="listQa[%{#st.index}].wordId"
						value="%{#question.word.id}">
					</s:hidden>
					<table class="bix-tbl-container" cellspacing="0" cellpadding="0"
						border="0" width="100%">
						<tbody>
							<tr>
								<td class="bix-td-qno jq-qno-148" rowspan="2" valign="top"
									align="left"><s:property value="%{#st.count}" />.</td>
								<td class="bix-td-qtxt" valign="top">
									<p>
										What is <i class="java-code"><s:property
												value="#question.word.word" /></i> mean?

									</p>

									<ol class="java-ol-1234">
										<s:if test="%{count !=null }">
											<s:radio theme="simple" list="#question.listAnswer"
												listKey="id" listValue="answer" listCssClass="correctAnswer"
												cssClass="answer" name="listQa[%{#st.index}].answerId" />
										</s:if>

										<s:else>
											<s:radio theme="simple" list="#question.listAnswer"
												listKey="id" listValue="answer" cssClass="answer"
												name="listQa[%{#st.index}].answerId" />
										</s:else>

									</ol>

									<p></p>
								</td>
							</tr>

						</tbody>
					</table>
				</s:iterator>
				<s:submit id="btnSubmit" class="submit"></s:submit>
			</s:form>
			<p></p>
			<s:form action="entryTestAction" cssStyle="width:100%;">
				<s:submit class="submit" value="refesh"></s:submit>
			</s:form>
		</div>

	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var labels = $("label[class='answer']");
			for (var i = 0; i < labels.length; i++) {
				$(labels[i]).after("<br/>");
			}

		})
	</script>
	<script type="text/javascript">
		//  Countdown Timer
		var min = 4;
		var sec = 60;
		var interval = setInterval(function() {
			if (sec > 0) {
				sec = sec - 1;
				document.getElementById("clock").innerHTML = min + " : " + sec;
			} else {
				if (sec == 0) {
					if (min == 0) {
						clearInterval(interval);
						document.getElementById('clock').innerHTML = 'Done';
						// or...
						alert("You're out of time!");
						document.getElementById('btnSubmit').click();
					} else {
						min = min - 1;
						sec = 60;
						document.getElementById("clock").innerHTML = min
								+ " : " + sec;
					}
				}
			}
		}, 1000);
	</script>
</body>
</html>