package com.dilip;

import java.util.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello World" + "\nEnter your name : ");
        var Scanner = new Scanner(System.in);
        var input = Scanner.nextLine();
        System.out.println("Hai "+input);
        var today = Calendar.DAY_OF_MONTH;
        var month = Calendar.MONTH;
        var year = Calendar.YEAR;

        System.out.println("Date is " + today + "/" +month+"/"+year+"\nTime is ");
    }
}