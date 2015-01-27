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
    /**
     * A boolean for the monorepeats, becomes true if the user wants to filter for monorepeats.
     */
    private static boolean monoRepeats = false;
    /**
     * A boolean for the direpeats, becomes true if the user wants to filter for direpeats.
     */
    private static boolean diRepeats = false;
    /**
     * A boolean for the hairpins, becomes true if the user wants to filter for hairpins.
     */
    private static boolean hairpins = false;
    /**
     * The size the oligos need to be.
     */
    private static int size;
    /**
     * The minimum melting temperature of the oligos.
     */
    private static int minTemp;
    /**
     * The maximum melting temperature of the oligos.
     */
    private static int maxTemp;
    /**
     * This method returns the boolean monoRepeats.
     * @return the boolean monoRepeats.
     */
    static boolean isMonoRepeats() {
        return monoRepeats;
    }
    /**
     * This method sets the boolean for monoRepeats on true.
     */
    static void setMonoRepeats() {
        Input.monoRepeats = true;
    }
    /**
     * This method returns the boolean diRepeats.
     * @return the boolean diRepeats.
     */
    static boolean isDiRepeats() {
        return diRepeats;
    }
    /**
     * This method sets the boolean for diRepeats on true.
     */
    static void setDiRepeats() {
        Input.diRepeats = true;
    }
    /**
     * This method returns the boolean hairpins.
     * @return the boolean hairpins.
     */
    static boolean isHairpins() {
        return hairpins;
    }
    /**
     * This method sets the boolean for hairpins on true.
     */
    static void setHairpins() {
        Input.hairpins = true;
    }
    /**
     * This method returns the integer for the minimum melting temperature.
     * @return the integer minTemp.
     */
    static int getMinTemp() {
        return minTemp;
    }
    /**
     * This method returns the integer for the maximum melting temperature.
     * @return the integer maxTemp.
     */
    static int getMaxTemp() {
        return maxTemp;
    }
    /**
     * This method sets the minimum and maximum melting temperature.
     * @param string a string which contains the user input for minimum and maximum melting temperature.
     */
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
    /**
     * This method returns the size.
     * @return the integer size.
     */
    static int getSize() {
        return size;
    }
    /**
     * This method sets the size of the oligos.
     * @param string a string shich contains the user input for oligo size.
     */
    static void setSize(String string) {
        Pattern pattern = Pattern.compile("\\d{1,}");
        Matcher matcher = pattern.matcher(string);
        matcher.find();
        Input.size = Integer.parseInt(matcher.group());
    }
}
