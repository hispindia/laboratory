 <%--
 *  Copyright 2009 Society for Health Information Systems Programmes, India (HISP India)
 *
 *  This file is part of Laboratory module.
 *
 *  Laboratory module is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  Laboratory module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Laboratory module.  If not, see <http://www.gnu.org/licenses/>.
 *
--%> 
<%@ include file="/WEB-INF/template/include.jsp" %>
<hr/>
<div id="patientReportTestInfo"></div>
<table class="tablesorter" style="width:100%">
	<thead>
		<tr>		
			<th><center>Test</center></th>
			<th><center>Result</center></th>
			<th><center>Units</center></th>
			<th><center>Reference Range</center></th> 
		</tr>
	</thead>	
	<tbody>
<c:forEach var="test" items="${tests}">
	<tr>		
		<td>
			<c:if test="${test.level eq 'LEVEL_INVESTIGATION'}"><b>${test.investigation}</b></c:if>
			<c:if test="${test.level eq 'LEVEL_SET'}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				${test.set}
			</c:if>
			<c:if test="${test.level eq 'LEVEL_TEST'}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test}</c:if>  
		</td>
		<td>${test.value}</td>
		<td>${test.unit}</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${not empty test.lowNormal or not empty test.hiNormal}">
			Adult/Male:${test.lowNormal}//${test.hiNormal}
			</c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${not empty test.lowNormal or not empty test.hiNormal}">
			Female:${test.lowAbsolute}//${test.hiAbsolute}
			</c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${not empty test.lowNormal or not empty test.hiNormal}">
			Child:${test.lowCritical}//${test.hiCritical}
			</c:if>
		
		</td>
	</tr>	
</c:forEach>

	</tbody>
</table>

<div id="patientReportPrintArea" style="display: none;">
	<style>
		table.wltable {
			
			font-family: Verdana, 'Lucida Grande', 'Trebuchet MS', Arial, Sans-Serif;			
			font-style: normal;
			font-size: 10px;
			
		}

		table.wltable th {
			border-bottom: 1px solid;
		}

		table.wltable td {
			padding: 0px 5px 0px 5px;
		}

		table.wltable .right {
			border-right: 1px solid;
		}
	</style>
	<div id="printAreaTestInfo"></div><br/><br/>
	<table class="wltable" cellspacing="0" style="width:100%; border: 1px solid; margin-left: auto; margin-right: auto;">
		<thead>
			<tr>
				<th class="right"><center>Test</center></th>
				<th class="right"><center>Result</center></th>
				<th class="right"><center>Units</center></th>
				<th><center>Reference Range</center></th> 
			</tr>
		</thead>	
		<tbody>
	<c:forEach var="test" items="${tests}">
		<tr>		
			<td class="right">&nbsp;
				<c:if test="${test.level eq 'LEVEL_INVESTIGATION'}"><b>${test.investigation}</b></c:if>
				<c:if test="${test.level eq 'LEVEL_SET'}">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.set}
				</c:if>
				<c:if test="${test.level eq 'LEVEL_TEST'}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.test}</c:if>  
			</td>
			<td class="right">${test.value}&nbsp;</td>
			<td class="right">${test.unit}&nbsp;</td>
			<td>&nbsp;
			<c:if test="${not empty test.lowNormal or not empty test.hiNormal}">
			Adult/Male:${test.lowNormal}//${test.hiNormal}
			</c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${not empty test.lowNormal or not empty test.hiNormal}">
			Female:${test.lowAbsolute}//${test.hiAbsolute}
			</c:if>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${not empty test.lowNormal or not empty test.hiNormal}">
			Child:${test.lowCritical}//${test.hiCritical}
			</c:if>
			
			
			</td>
		</tr>	
	</c:forEach>
		</tbody>
	</table>
	<div style="text-align: right; margin-top: 30px; margin-right: 150px;">Signature</div>
</div>