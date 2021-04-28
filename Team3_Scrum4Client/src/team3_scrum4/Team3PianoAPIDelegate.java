
package team3_scrum4;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "Team3_Piano_APIDelegate", targetNamespace = "http://team3_scrum4/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Team3PianoAPIDelegate {


    /**
     * 
     * @param arg2
     * @param arg1
     * @param arg0
     * @return
     *     returns team3_scrum4.Team3Piano
     */
    @WebMethod(operationName = "CreatePiano")
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "CreatePiano", targetNamespace = "http://team3_scrum4/", className = "team3_scrum4.CreatePiano")
    @ResponseWrapper(localName = "CreatePianoResponse", targetNamespace = "http://team3_scrum4/", className = "team3_scrum4.CreatePianoResponse")
    @Action(input = "http://team3_scrum4/Team3_Piano_APIDelegate/CreatePianoRequest", output = "http://team3_scrum4/Team3_Piano_APIDelegate/CreatePianoResponse")
    public Team3Piano createPiano(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        int arg1,
        @WebParam(name = "arg2", targetNamespace = "")
        double arg2);

}
