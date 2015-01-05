/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.pfolkertsma.bioinfwebapp;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Oligo class. Creates an Oligo object.
 * @author pfolkertsma
 */
public class Oligo {
    /**
     * A string which contains the sequence of the oligo.
     */
    String sequence;
    /**
     * This method checks the sequence of the Oligo object for mononucleotide repeats.
     * @return true if a mono nucleotide repeat is found, false if no mono nucleotide repeat is found.
     */
    public boolean checkMonoRepeats() {
        Pattern pattern = Pattern.compile("AAAA|TTTT|CCCC|GGGG");
        Matcher matcher = pattern.matcher(sequence);
        return matcher.find();
    }
    /**
     * This method checks the sequence of the Oligo object for dinucleotide repeats.
     * @return true if a dinucleotide repeat is found, false if no dinucleotide repeat is found.
     */
    public boolean checkDiRepeats() {
        Pattern pattern = Pattern.compile("ATATAT|AGAGAG|ACACAC|TATATA|TCTCTC|TGTGTG|GCGCGC|GTGTGT|GAGAGA");
        Matcher matcher = pattern.matcher(sequence);
        return matcher.find();
    }
    /**
     * This method checks the sequence of the Oligo object for hairpins.
     * @return true if a hairpin is found, false if no hairpin is found.
     */
    public boolean checkHairpin() {
        //A sequence can form a hairpin if the reversed complement of a part of
        //at least five nucleotides can be found in the rest of the sequence, with
        //a minimum of three nucleotides in between. 
        boolean hasHairpin = false;
        int x = 0;
        do {
            String complement = makeComplement(sequence.substring(x, x+5)); 
            if (sequence.substring(x+8, sequence.length()).contains(complement)) { 
                hasHairpin = true;
            }
            x++;
        } while (x+8 <= sequence.length());
        return hasHairpin;
    }
    /**
     * This method returns the reversed complement from a given sequence.
     * @param seq a String which contains a sequence
     * @return the reversed complement of the given sequence.
     */
    String makeComplement(String seq) {
        HashMap<Character, Character> nucleotides = new HashMap();
        nucleotides.put('A', 'T');
        nucleotides.put('C', 'G');
        nucleotides.put('T', 'A');
        nucleotides.put('G', 'C');
        String complement = "";
        for (Character c : seq.toCharArray()) {
            complement += nucleotides.get(c);
        }
        complement = new StringBuffer(complement).reverse().toString();
        return complement;
    }
    /**
     * This method calculates the melting temperature of the sequence of the Oligo object.
     * @return a double which contains the melting temperature of the sequence.
     */
    public double calculateMeltingTemp() {
        double temp;
        Map<Character, Integer> frequencies = new HashMap();
        frequencies.put('A', 0);
        frequencies.put('C', 0);
        frequencies.put('T', 0);
        frequencies.put('G', 0);
        for (char c : sequence.toCharArray()) {
            int count = frequencies.get(c);
            frequencies.put(c, frequencies.get(c)+1);
        }
        if (sequence.length() < 14) {
            temp = 4 * (frequencies.get('G') + frequencies.get('C')) + 2 * (frequencies.get('A') + frequencies.get('T'));
        } else {
            temp = 64.9 + 41 * ((frequencies.get('G') + frequencies.get('C'))-16.4) / sequence.length();
        }
        return temp;
    }
    /**
     * This method checks if a given sequence is a valid sequence (only contains A, C, T and G).
     * @param seq a String which contains a sequence.
     * @return true if the sequence is valid, false if the sequence is not valid.
     */
    public boolean checkNucleotides() {
        Pattern p = Pattern.compile("[^ACTG]");
        Matcher m = p.matcher(sequence);
        return !m.find();
    }
    /**
     * This method overrides the toString method for the Oligo object.
     * @return a string of the sequence of the Oligo object.
     */
    @Override
    public String toString(){
       return sequence;
   }
}
