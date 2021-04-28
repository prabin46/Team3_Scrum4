package team3_scrum4;
import team3_scrum4.*;

public class Team3_Piano_API {
	// Creates a Piano object based on information passed in
	public Team3_Piano CreatePiano(String name, int numberOfKeys, double price) {
		try {
			Team3_Piano piano = new Team3_Piano(name, numberOfKeys, price);
			return piano;
		} catch (Exception err) {
			Team3_Piano piano = new Team3_Piano(err.toString(), 0, 0);
			return piano;
		}
	}
}
