<%@page contentType="text/html;charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
com.ibm.ccl.ws.jaxws.gstc.util.OutputUtils.init(session);

boolean async       = session.getAttribute("__async__") == null ? false : true;
String methodKey    = request.getParameter("key");
String resultSuffix = methodKey != null && methodKey.length() > 0 ? " - " + methodKey : "";
%>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
<LINK rel="stylesheet" type="text/css" href="TestClient.css"/>
<script language="JavaScript">

function reloadMethods() {
    window.parent.frames["methods"].location.reload(true);
}
</script>
</HEAD>
<BODY>
<TABLE class="heading" width="100%">
<TR><TD>Result<%= org.eclipse.jst.ws.util.JspUtils.markup(resultSuffix) %></TD></TR>
</TABLE>
<P>
<jsp:useBean id="sampleTeam3_Piano_APIPortProxyid" scope="session" class="team3_scrum4.Team3_Piano_APIPortProxy" />

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

boolean isDone = true;
try {
    String sourceInTemp = request.getParameter("__rawxml__");
        javax.xml.transform.Source sourceIn  = sourceInTemp != null ?
            new javax.xml.transform.stream.StreamSource(new java.io.ByteArrayInputStream(sourceInTemp.getBytes())) : null;
    javax.xml.transform.Source sourceOut = null;

    boolean bypass = (sourceIn != null);

switch (methodID){ 
case 2:
    gotMethod = true;
    team3_scrum4.Team3_Piano_APIPortProxy.Descriptor returnp3mtemp = null;
    if (methodKey != null) {
        javax.xml.ws.Response resp = com.ibm.ccl.ws.jaxws.gstc.util.AsyncUtils.getResponse(session, methodKey);
        if (resp != null) {
            isDone = resp.isDone();
            if (!isDone)
                break;
            if (resp.get() != null) {
                Object o = resp.get();
                if (o instanceof javax.xml.transform.Source)
                    sourceOut = (javax.xml.transform.Source) o;
                else if (o instanceof team3_scrum4.Team3_Piano_APIPortProxy.Descriptor)
                    returnp3mtemp = (team3_scrum4.Team3_Piano_APIPortProxy.Descriptor) o;
            }
        }
    }
    else if (bypass) {
        javax.xml.ws.Dispatch dispatch = sampleTeam3_Piano_APIPortProxyid._getDescriptor().getDispatch();

        if (request.getParameter("__use_soapaction__") != null)
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.useSoapAction(dispatch, request.getParameter("__soapaction__"));
        else
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.clearSoapAction(dispatch);

        if (!async)
            sourceOut = (javax.xml.transform.Source) dispatch.invoke(sourceIn);
        else {
            // async code omitted
            break;
        }
    } else {
        if (!async) {
        try {
            returnp3mtemp = sampleTeam3_Piano_APIPortProxyid._getDescriptor();
            }catch(Exception exc){
                %>
                Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.toString()) %>
                Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.getMessage()) %>
                <%
break;
            }
        }
        else {
            // async code omitted
            break;
        }
    }
if (sourceOut != null) {
%>
    <TEXTAREA ROWS="8" COLs="45"><%= org.eclipse.jst.ws.util.JspUtils.markup(com.ibm.ccl.ws.jaxws.gstc.util.SourceUtils.transform(sourceOut)) %></TEXTAREA>
<%
}
else {
if (returnp3mtemp == null) {
%>
    null
<%
} else {
    %>
    <TABLE CLASS="tableform">
<TR>
<TD COLSPAN="2" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">returnp:</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">proxy:</TD>
<TD>
<%
if(returnp3mtemp != null){
team3_scrum4.Team3PianoAPIDelegate typeproxy5 = returnp3mtemp.getProxy();
if(typeproxy5 != null){
        if(typeproxy5!= null){
        String tempproxy5 = typeproxy5.toString();
        %>
        <%=tempproxy5%>
        <%
        }}
else{
        %>
        <%= typeproxy5%>
        <%
}
}
%>
</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">dispatch:</TD>
<TD>
<%
if(returnp3mtemp != null){
javax.xml.ws.Dispatch typedispatch7 = returnp3mtemp.getDispatch();
if(typedispatch7 != null){
        if(typedispatch7!= null){
        String tempdispatch7 = typedispatch7.toString();
        %>
        <%=tempdispatch7%>
        <%
        }}
else{
        %>
        <%= typedispatch7%>
        <%
}
}
%>
</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">endpoint:</TD>
<TD>
<%
if(returnp3mtemp != null){
java.lang.String typeendpoint9 = returnp3mtemp.getEndpoint();
if(typeendpoint9 != null){
        String tempResultendpoint9 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeendpoint9));
        %>
        <%= tempResultendpoint9 %>
        <%
}
else{
        %>
        <%= typeendpoint9%>
        <%
}
}
%>
</TD>
    </TABLE>
    <%
}
%>
<HR/><BR/>
<%
}
break;
case 13:
    gotMethod = true;
    team3_scrum4.Team3Piano returnp14mtemp = null;
    if (methodKey != null) {
        javax.xml.ws.Response resp = com.ibm.ccl.ws.jaxws.gstc.util.AsyncUtils.getResponse(session, methodKey);
        if (resp != null) {
            isDone = resp.isDone();
            if (!isDone)
                break;
            if (resp.get() != null) {
                Object o = resp.get();
                if (o instanceof javax.xml.transform.Source)
                    sourceOut = (javax.xml.transform.Source) o;
                else if (o instanceof team3_scrum4.Team3Piano)
                    returnp14mtemp = (team3_scrum4.Team3Piano) o;
            }
        }
    }
    else if (bypass) {
        javax.xml.ws.Dispatch dispatch = sampleTeam3_Piano_APIPortProxyid._getDescriptor().getDispatch();

        if (request.getParameter("__use_soapaction__") != null)
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.useSoapAction(dispatch, request.getParameter("__soapaction__"));
        else
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.clearSoapAction(dispatch);

        if (!async)
            sourceOut = (javax.xml.transform.Source) dispatch.invoke(sourceIn);
        else {
            // async code omitted
            break;
        }
    } else {
        String arg0_0id=  request.getParameter("arg022");
        String arg022null = request.getParameter("arg022null");
        java.lang.String arg0_0idTemp;
        if (arg022null != null)
            arg0_0idTemp = null;
        else {
         arg0_0idTemp  = arg0_0id;
        }

        String arg1_2id=  request.getParameter("arg124");
        int arg1_2idTemp  = Integer.parseInt(arg1_2id);

        String arg2_4id=  request.getParameter("arg226");
        double arg2_4idTemp  = Double.parseDouble(arg2_4id);

        if (!async) {
        try {
            returnp14mtemp = sampleTeam3_Piano_APIPortProxyid.createPiano(arg0_0idTemp,arg1_2idTemp,arg2_4idTemp);
            }catch(Exception exc){
                %>
                Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.toString()) %>
                Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.getMessage()) %>
                <%
break;
            }
        }
        else {
            // async code omitted
            break;
        }
    }
if (sourceOut != null) {
%>
    <TEXTAREA ROWS="8" COLs="45"><%= org.eclipse.jst.ws.util.JspUtils.markup(com.ibm.ccl.ws.jaxws.gstc.util.SourceUtils.transform(sourceOut)) %></TEXTAREA>
<%
}
else {
if (returnp14mtemp == null) {
%>
    null
<%
} else {
    %>
    <TABLE CLASS="tableform">
<TR>
<TD COLSPAN="2" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">returnp:</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">name:</TD>
<TD>
<%
if(returnp14mtemp != null){
java.lang.String typename16 = returnp14mtemp.getName();
if(typename16 != null){
        String tempResultname16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename16));
        %>
        <%= tempResultname16 %>
        <%
}
else{
        %>
        <%= typename16%>
        <%
}
}
%>
</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">numberOfKeys:</TD>
<TD>
<%
if(returnp14mtemp != null){
int typenumberOfKeys18 = returnp14mtemp.getNumberOfKeys();
        String tempResultnumberOfKeys18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumberOfKeys18));
        %>
        <%= tempResultnumberOfKeys18 %>
        <%
}
%>
</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">price:</TD>
<TD>
<%
if(returnp14mtemp != null){
double typeprice20 = returnp14mtemp.getPrice();
        String tempResultprice20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeprice20));
        %>
        <%= tempResultprice20 %>
        <%
}
%>
</TD>
    </TABLE>
    <%
}
%>
<HR/><BR/>
<%
}
break;
}
} catch (Exception e) { 
%>
exception: <%=org.eclipse.jst.ws.util.JspUtils.markup(e.toString())%>
<%
return;
}
if(!gotMethod){
%>
Result: N/A
<%
} else if (!isDone) {
%>
No results available yet.
<%
} else if (async && methodKey == null) {
%>
The service has been invoked.
<script language="JavaScript">reloadMethods();</script>
<%
}
%>
</BODY>
</HTML>