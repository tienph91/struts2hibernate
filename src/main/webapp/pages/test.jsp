<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Test exam!!!</title>
        <link rel="stylesheet" type="text/css" href="css/test.css">
    </head>
    <body>
        <div id="divTabContent" style="width: 100%; display: block;"
            class="mx-none">
            <div class="bix-div-container">
                <s:iterator value="listWords">
                   <table class="bix-tbl-container" cellspacing="0" cellpadding="0"
                       border="0" width="100%">
                       <tbody>
                           <tr>
                               <td class="bix-td-qno jq-qno-148" rowspan="2" valign="top"
                                   align="left">1.</td>
                               <td class="bix-td-qtxt" valign="top">
                                   <p>What is <i class="java-code"><s:property value="word"/></i> mean?
                                   </p>
                                   <ol class="java-ol-1234">
                                       <li>The <i class="java-code">Iterator</i> interface
                                           declares only three methods: <i class="java-code">hasNext</i>,
                                           <i class="java-code">next</i> and <i class="java-code">remove</i>.
                                       </li>
                                       <li>The <i class="java-code">ListIterator</i> interface
                                           extends both the <i class="java-code">List</i> and <i
                                               class="java-code">Iterator</i> interfaces.
                                       </li>
                                       <li>The <i class="java-code">ListIterator</i> interface
                                           provides forward and backward iteration capabilities.
                                       </li>
                                       <li>The <i class="java-code">ListIterator</i> interface
                                           provides the ability to modify the List during iteration.
                                       </li>
                                       <li>The <i class="java-code">ListIterator</i> interface
                                           provides the ability to determine its position in the List.
                                       </li>
                                   </ol>
                                   <p></p>
                               </td>
                           </tr>
                           <tr>
                               <td class="bix-td-miscell" valign="top">
                                   <table
                                       class="bix-tbl-options" id="tblOption_148" border="0"
                                       cellpadding="0" cellspacing="0" width="100%">
                                       <tbody>
                                           <tr>
                                               <td nowrap="nowrap" class="bix-td-option bix-td-radio"
                                                   width="1%" id="tdOptionNo_A_148"><input type="checkbox"
                                                   class="result-option cls_148" id="optionAns_A_148"></td>
                                               <td class="bix-td-option" width="1%">A.</td>
                                               <td class="bix-td-option" width="99%" id="tdOptionDt_A_148">
                                                   <table
                                                       border="0" cellpadding="0" cellspacing="0">
                                                       <tbody>
                                                           <tr>
                                                               <td class="bix-inner-td-option">2, 3, 4 and 5</td>
                                                               <td id="tdAnswerIMG_A_148"
                                                                   class="jq-img-answer mx-none mx-lpad-10" valign="middle">
                                                                   <img src="/_files/images/website/wrong.gif" alt="">
                                                               </td>
                                                           </tr>
                                                       </tbody>
                                                   </table>
                                               </td>
                                           </tr>
                                           <tr>
                                               <td nowrap="nowrap" class="bix-td-option bix-td-radio"
                                                   width="1%" id="tdOptionNo_B_148"><input type="checkbox"
                                                   class="result-option cls_148" id="optionAns_B_148"></td>
                                               <td class="bix-td-option" width="1%">B.</td>
                                               <td class="bix-td-option" width="99%" id="tdOptionDt_B_148">
                                                   <table
                                                       border="0" cellpadding="0" cellspacing="0">
                                                       <tbody>
                                                           <tr>
                                                               <td class="bix-inner-td-option">1, 3, 4 and 5</td>
                                                               <td id="tdAnswerIMG_B_148"
                                                                   class="jq-img-answer mx-none mx-lpad-10" valign="middle">
                                                                   <img src="/_files/images/website/accept.png" alt="">
                                                               </td>
                                                           </tr>
                                                       </tbody>
                                                   </table>
                                               </td>
                                           </tr>
                                           <tr>
                                               <td nowrap="nowrap" class="bix-td-option bix-td-radio"
                                                   width="1%" id="tdOptionNo_C_148"><input type="checkbox"
                                                   class="result-option cls_148" id="optionAns_C_148"></td>
                                               <td class="bix-td-option" width="1%">C.</td>
                                               <td class="bix-td-option" width="99%" id="tdOptionDt_C_148">
                                                   <table
                                                       border="0" cellpadding="0" cellspacing="0">
                                                       <tbody>
                                                           <tr>
                                                               <td class="bix-inner-td-option">3, 4 and 5</td>
                                                               <td id="tdAnswerIMG_C_148"
                                                                   class="jq-img-answer mx-none mx-lpad-10" valign="middle">
                                                                   <img src="/_files/images/website/wrong.gif" alt="">
                                                               </td>
                                                           </tr>
                                                       </tbody>
                                                   </table>
                                               </td>
                                           </tr>
                                           <tr>
                                               <td nowrap="nowrap" class="bix-td-option bix-td-radio"
                                                   width="1%" id="tdOptionNo_D_148"><input type="checkbox"
                                                   class="result-option cls_148" id="optionAns_D_148"></td>
                                               <td class="bix-td-option" width="1%">D.</td>
                                               <td class="bix-td-option" width="99%" id="tdOptionDt_D_148">
                                                   <table
                                                       border="0" cellpadding="0" cellspacing="0">
                                                       <tbody>
                                                           <tr>
                                                               <td class="bix-inner-td-option">1, 2 and 3</td>
                                                               <td id="tdAnswerIMG_D_148"
                                                                   class="jq-img-answer mx-none mx-lpad-10" valign="middle">
                                                                   <img src="/_files/images/website/wrong.gif" alt="">
                                                               </td>
                                                           </tr>
                                                       </tbody>
                                                   </table>
                                               </td>
                                           </tr>
                                       </tbody>
                                   </table>
                                   <input type="hidden" class="jq-actual-answer"
                                       id="optionAnswer_148" value="B"> <input type="hidden"
                                       class="jq-selected-answer" id="optionSelAns_148" value="">
                                   <div class="bix-div-answer mx-none" id="divAnswer_148">
                                       <div class="div-ans-des-wrapper">
                                           <p>
                                               <span class="ib-green">Your Answer:</span> Option <span
                                                   class="jq-user-answer ib-gray ib-bold">(Not Answered)</span>
                                           </p>
                                           <p>
                                               <span class="ib-green">Correct Answer:</span> Option <span
                                                   class="ib-dgray ib-bold">B</span>
                                           </p>
                                           <p>
                                               <span class="ib-green mx-uline">Explanation:</span>
                                           </p>
                                           <div class="bix-ans-description">
                                               <p>
                                                   The <i class="java-code">ListIterator</i> interface extends
                                                   the <i class="java-code">Iterator</i> interface and declares
                                                   additional methods to provide forward and backward iteration
                                                   capabilities, List modification capabilities, and the ability
                                                   to determine the position of the iterator in the List.
                                               </p>
                                           </div>
                                           <p>
                                               <span class="ib-green">Learn more problems on : <a
                                                   target="_blank"
                                                   href="/java-programming/objects-and-collections/">Objects
                                               and Collections</a></span>
                                           </p>
                                           <p>
                                               <span class="ib-green">Discuss about this problem : <a
                                                   target="_blank"
                                                   href="/java-programming/objects-and-collections/discussion-148">Discuss
                                               in Forum</a></span>
                                           </p>
                                       </div>
                                       <br>
                                   </div>
                                   <div class="jq-workspace">
                                       <div class="div-workspace-link mx-fs-13">
                                           <a href="javascript: void 0;"
                                               onclick="$('#divWorkspace_148').slideToggle('slow');"
                                               title="Workspace">[#]</a>
                                       </div>
                                       <div class="mx-none" id="divWorkspace_148">
                                           <textarea class="div-workspace-box" rows="10" cols="50"></textarea>
                                       </div>
                                   </div>
                               </td>
                           </tr>
                       </tbody>
                   </table>
                 </s:iterator>
            </div>
        </div>
        <div id="divSubmitTest" align="center"
            style="padding: 20px; margin-top: 20px; margin-bottom: 20px; border: 1px dashed rgb(204, 204, 204); background-color: rgb(253, 253, 253);">
            <input style="height: 30px; font-size: 14px" align="center"
                type="button" value="   Submit Test   " id="btnSubmitTest">
        </div>
    </body>
</html>