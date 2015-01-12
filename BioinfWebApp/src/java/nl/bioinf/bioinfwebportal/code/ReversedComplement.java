/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package nl.bioinf.bioinfwebportal.code;

import java.util.HashMap;

/**
 *
 * @author pfolkertsma
 */
public class ReversedComplement {
    String makeComplement(String sequence) {
        HashMap<Character, Character> nucleotides = new HashMap();
        nucleotides.put('A', 'T');
        nucleotides.put('C', 'G');
        nucleotides.put('T', 'A');
        nucleotides.put('G', 'C');
        String complement = "";
        for (Character c : sequence.toCharArray()) {
            complement += nucleotides.get(c);
        }
        complement = new StringBuffer(complement).reverse().toString();
        return complement;
    }
}
