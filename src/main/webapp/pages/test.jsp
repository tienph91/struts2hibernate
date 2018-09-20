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
<script type="text/javascript" src="js/test.js"></script>
</head>
<body>

	<s:if test="%{count !=null }">
		<p class="correct">
			Answer correct
			<s:property value="count" />
		</p>
	</s:if>
	<div id="divTabContent" class="container"
		style="width: 100%; display: block;" class="mx-none">

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
									align="left"><s:property value="%{#st.count}" /></td>
								<td class="bix-td-qtxt" valign="top">
									<p>
										What is <i class="java-code"><s:property
												value="#question.word.word" /></i> mean?

									</p>

									<ol class="java-ol-1234">
										<s:if test="%{count !=null }">
											<s:radio  theme="simple" list="#question.listAnswer"
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
				<s:submit></s:submit>
			</s:form>
		</div>

	</div>
	<!-- 	<div id="divSubmitTest" align="center" -->
	<!-- 		style="padding: 20px; margin-top: 20px; margin-bottom: 20px; border: 1px dashed rgb(204, 204, 204); background-color: rgb(253, 253, 253);"> -->
	<!-- 		<input style="height: 30px; font-size: 14px" align="center" -->
	<!-- 			type="button" value="   Submit Test   " id="btnSubmitTest" ac> -->
	<!-- 	</div> -->

</body>
</html>