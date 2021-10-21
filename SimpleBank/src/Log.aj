import java.io.File;
import java.util.Calendar;

public aspect Log {

    File file = new File("log.txt");
    //Aspecto: Deben hacer los puntos de cortes (pointcut) para crear un log con los tipos de transacciones realizadas.
    pointcut success() : call(void moneyMakeTransaction());
    after() : success() {
    	Calendar cal = Calendar.getInstance();
    	System.out.println(cal.getTime()); 
    	System.out.println("Transaccion");
    }
    pointcut success2() : call(void moneyWithdrawal());
    after() : success2() {
    	Calendar cal = Calendar.getInstance();
    	System.out.println(cal.getTime()); 
    	System.out.println("Retiro");
    }
}