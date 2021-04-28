package team3_scrum4;

import team3_scrum4.*;
import javax.jws.WebService;


@WebService (targetNamespace="http://team3_scrum4/", serviceName="Team3_Piano_APIService", portName="Team3_Piano_APIPort")
public class Team3_Piano_APIDelegate{

    team3_scrum4.Team3_Piano_API _team3_Piano_API = null;

    public Team3_Piano CreatePiano (String name, int numberOfKeys, double price) {
        return _team3_Piano_API.CreatePiano(name,numberOfKeys,price);
    }

    public Team3_Piano_APIDelegate() {
        _team3_Piano_API = new team3_scrum4.Team3_Piano_API(); }

}