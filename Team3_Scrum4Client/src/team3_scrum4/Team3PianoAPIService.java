
package team3_scrum4;

import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;

@WebServiceClient(name = "Team3_Piano_APIService", targetNamespace = "http://team3_scrum4/", wsdlLocation = "WEB-INF/wsdl/Team3PianoAPIService.wsdl")
public class Team3PianoAPIService
    extends Service
{

    private final static URL TEAM3PIANOAPISERVICE_WSDL_LOCATION;
    private final static WebServiceException TEAM3PIANOAPISERVICE_EXCEPTION;
    private final static QName TEAM3PIANOAPISERVICE_QNAME = new QName("http://team3_scrum4/", "Team3_Piano_APIService");

    static {
            TEAM3PIANOAPISERVICE_WSDL_LOCATION = team3_scrum4.Team3PianoAPIService.class.getResource("/WEB-INF/wsdl/Team3PianoAPIService.wsdl");
        WebServiceException e = null;
        if (TEAM3PIANOAPISERVICE_WSDL_LOCATION == null) {
            e = new WebServiceException("Cannot find 'WEB-INF/wsdl/Team3PianoAPIService.wsdl' wsdl. Place the resource correctly in the classpath.");
        }
        TEAM3PIANOAPISERVICE_EXCEPTION = e;
    }

    public Team3PianoAPIService() {
        super(__getWsdlLocation(), TEAM3PIANOAPISERVICE_QNAME);
    }

    public Team3PianoAPIService(WebServiceFeature... features) {
        super(__getWsdlLocation(), TEAM3PIANOAPISERVICE_QNAME, features);
    }

    public Team3PianoAPIService(URL wsdlLocation) {
        super(wsdlLocation, TEAM3PIANOAPISERVICE_QNAME);
    }

    public Team3PianoAPIService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, TEAM3PIANOAPISERVICE_QNAME, features);
    }

    public Team3PianoAPIService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public Team3PianoAPIService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns Team3PianoAPIDelegate
     */
    @WebEndpoint(name = "Team3_Piano_APIPort")
    public Team3PianoAPIDelegate getTeam3PianoAPIPort() {
        return super.getPort(new QName("http://team3_scrum4/", "Team3_Piano_APIPort"), Team3PianoAPIDelegate.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Team3PianoAPIDelegate
     */
    @WebEndpoint(name = "Team3_Piano_APIPort")
    public Team3PianoAPIDelegate getTeam3PianoAPIPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://team3_scrum4/", "Team3_Piano_APIPort"), Team3PianoAPIDelegate.class, features);
    }

    private static URL __getWsdlLocation() {
        if (TEAM3PIANOAPISERVICE_EXCEPTION!= null) {
            throw TEAM3PIANOAPISERVICE_EXCEPTION;
        }
        return TEAM3PIANOAPISERVICE_WSDL_LOCATION;
    }

}
