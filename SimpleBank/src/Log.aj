import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Calendar;

import com.bank.Archivo;

public aspect Log {
    //Aspecto: Deben hacer los puntos de cortes (pointcut) para crear un log con los tipos de transacciones realizadas.
    pointcut success() : call(void moneyMakeTransaction());
    after() : success() {
    	Calendar cal = Calendar.getInstance();
    	Archivo.guardarArchivo("Transaccion", cal.getTime());
    	System.out.println(cal.getTime()); 
    	System.out.println("Transaccion");
    }
    pointcut success2() : call(void moneyWithdrawal());
    after() : success2() {
    	Calendar cal = Calendar.getInstance();
    	Archivo.guardarArchivo("Retiro", cal.getTime());
    	System.out.println(cal.getTime()); 
    	System.out.println("Retiro");
    }
}

