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
 *
 * @author pfolkertsma
 */
public class Oligo {
    
    String sequence;


    public boolean checkMonoRepeats() {
        Pattern pattern = Pattern.compile("AAAA|TTTT|CCCC|GGGG");
        Matcher matcher = pattern.matcher(sequence);
        return matcher.find();
    }

    public boolean checkDiRepeats() {
        Pattern pattern = Pattern.compile("ATATAT|AGAGAG|ACACAC|TATATA|TCTCTC|TGTGTG|GCGCGC|GTGTGT|GAGAGA");
        Matcher matcher = pattern.matcher(sequence);
        return matcher.find();
    }

    public boolean checkHairpin() {
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
    
    public boolean checkNucleotides(String seq) {
        Pattern p = Pattern.compile("[^ACTG]");
        Matcher m = p.matcher(seq);
        return !m.find();
    }
    
    @Override
   public String toString(){
       return sequence;
   }
}
