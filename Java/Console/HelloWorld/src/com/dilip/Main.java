package com.dilip;

// Everything inside java.lang package is imported by default
//* To import everything inside the package

import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Main {
    public static void main(String[] args) {

        System.out.println("Hello World");

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        System.out.println("Today is " + formatter.format(date));

        System.out.println("May i know who is this : ");
        var Scanner = new Scanner(System.in);
        var input = Scanner.next();
        System.out.println("Hai " + input + "\nNice to meet you\n- Greetings Java");

    }
}