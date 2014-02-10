<%@page contentType="text/plain"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/taglib/wms/MenuMaker" prefix="menu"%>
<%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<menu:folder label="HAB-monitoring">

        <menu:folder label="1-day averaged">
        <menu:layer dataset="${datasets.hab_1d}" name="hab_1d/chlor_a" label="chlorophyll-a"/>
        <menu:layer dataset="${datasets.hab_1d}" name="hab_1d/cdom_a" label="a-cdom"/>
        <menu:layer dataset="${datasets.hab_1d}" name="hab_1d/SST" label="SST"/>
        <menu:layer dataset="${datasets.hab_1d}" name="hab_1d/Rrs_412" label="Rrs_412"/>
        <menu:layer dataset="${datasets.hab_1d}" name="hab_1d/Rrs_667" label="Rrs_667"/>
        <menu:layer dataset="${datasets.hab_1d}" name="hab_1d/Rrs_555" label="Rrs_555"/>
        </menu:folder>


	<menu:folder label="7-days averaged">
        <menu:layer dataset="${datasets.hab_7d}" name="hab_7d/chlor_a" label="chlorophyll-a"/>
        <menu:layer dataset="${datasets.hab_7d}" name="hab_7d/cdom_a" label="a-cdom"/>
        <menu:layer dataset="${datasets.hab_7d}" name="hab_7d/SST" label="SST"/>
        <menu:layer dataset="${datasets.hab_7d}" name="hab_7d/Rrs_412" label="Rrs_412"/>
        <menu:layer dataset="${datasets.hab_7d}" name="hab_7d/Rrs_667" label="Rrs_667"/>
        <menu:layer dataset="${datasets.hab_7d}" name="hab_7d/Rrs_555" label="Rrs_555"/>
	</menu:folder>


</menu:folder>



