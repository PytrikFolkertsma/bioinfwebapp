/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.pfolkertsma.bioinfwebapp;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author pfolkertsma
 */
public class Input {

    private static boolean monoRepeats = false;
    private static boolean diRepeats = false;
    private static boolean hairpins = false;
    private static int size;
    private static int minTemp;
    private static int maxTemp;

    static boolean isMonoRepeats() {
        return monoRepeats;
    }

    static void setMonoRepeats() {
        Input.monoRepeats = true;
    }

    static boolean isDiRepeats() {
        return diRepeats;
    }

    static void setDiRepeats() {
        Input.diRepeats = true;
    }

    static boolean isHairpins() {
        return hairpins;
    }

    static void setHairpins() {
        Input.hairpins = true;
    }

    static int getMinTemp() {
        return minTemp;
    }

    static int getMaxTemp() {
        return maxTemp;
    }

    static void setTemp(String string) {
        Pattern pattern = Pattern.compile("\\d{1,2}");
        Matcher matcher = pattern.matcher(string);
        ArrayList<String> temperatures = new ArrayList<String>();
        while(matcher.find()) {
            temperatures.add(matcher.group());
        }
        Input.minTemp = Integer.parseInt(temperatures.get(0));
        Input.maxTemp = Integer.parseInt(temperatures.get(1));
    }

    static int getSize() {
        return size;
    }

    static void setSize(String string) {
        Pattern pattern = Pattern.compile("\\d{1,}");
        Matcher matcher = pattern.matcher(string);
        matcher.find();
        Input.size = Integer.parseInt(matcher.group());
    }

}
