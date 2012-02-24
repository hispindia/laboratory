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
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<table border='0'>
	<tr>
		<td style="text-align:right;">ID. No:</td>
		<td><b>${patient_identifier}</b></td>
		<td style="text-align:right;">Age:</td>
		<td><b>${patient_age}</b></td>
		<td style="text-align:right;">Gender:</td>
		<td><b><c:choose>
				<c:when test="${patient_gender eq 'M'}">Male</c:when>
				<c:otherwise>Female</c:otherwise>
			</c:choose>
			</b>
		</td>
	</tr>
	<tr>		
		<td style="text-align:right;">Name:</td>
		<td><b>${patient_name}</b></td>
		<td style="text-align:right;">Order date:</td>
		<td><b>${test_orderDate}</b></td>
		<td></td>
		<td></td>
	</tr>
</table>