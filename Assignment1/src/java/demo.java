
import java.util.HashMap;
import java.util.Iterator;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Abhishek Vaio
 */
public class demo {

    HashMap<String, String> userCredentials = new HashMap<String, String>();

    public void add() {
        userCredentials.put("rishiralhan@gmail.com", "1234");
        userCredentials.put("rishiralhan@yahoo.com", "12345");
    }

    public void execute() {
        Iterator it = userCredentials.entrySet().iterator();
        while (it.hasNext()) {
            HashMap.Entry pair = (HashMap.Entry) it.next();
            System.out.println(pair.getKey() + " = " + pair.getValue());
        }
    }

    public static void main(String[] args) {
        demo obj = new demo();
        obj.add();
        obj.execute();

    }
}
