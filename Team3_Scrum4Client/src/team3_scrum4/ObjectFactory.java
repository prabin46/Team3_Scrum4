
package team3_scrum4;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the team3_scrum4 package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _CreatePiano_QNAME = new QName("http://team3_scrum4/", "CreatePiano");
    private final static QName _CreatePianoResponse_QNAME = new QName("http://team3_scrum4/", "CreatePianoResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: team3_scrum4
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CreatePiano }
     * 
     */
    public CreatePiano createCreatePiano() {
        return new CreatePiano();
    }

    /**
     * Create an instance of {@link CreatePianoResponse }
     * 
     */
    public CreatePianoResponse createCreatePianoResponse() {
        return new CreatePianoResponse();
    }

    /**
     * Create an instance of {@link Team3Piano }
     * 
     */
    public Team3Piano createTeam3Piano() {
        return new Team3Piano();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreatePiano }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://team3_scrum4/", name = "CreatePiano")
    public JAXBElement<CreatePiano> createCreatePiano(CreatePiano value) {
        return new JAXBElement<CreatePiano>(_CreatePiano_QNAME, CreatePiano.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreatePianoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://team3_scrum4/", name = "CreatePianoResponse")
    public JAXBElement<CreatePianoResponse> createCreatePianoResponse(CreatePianoResponse value) {
        return new JAXBElement<CreatePianoResponse>(_CreatePianoResponse_QNAME, CreatePianoResponse.class, null, value);
    }

}
