package com.bank;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


public class Archivo {
	    public static void guardarArchivo(String texto, Date fecha) {
	        try {
	            FileWriter fw = new FileWriter("log.txt",true);
	            BufferedWriter bw = new BufferedWriter(fw);
	            PrintWriter pw = new PrintWriter(bw);
	            
	            pw.println(texto);
	            pw.println(fecha);
	            pw.flush();
	            pw.close();
	        }
	        catch(IOException E) {
	            System.out.println("Archivo no creado");
	        }
	    
	}
}
