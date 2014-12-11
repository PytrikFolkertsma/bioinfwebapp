/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.bioinfwebportal.code;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * The Molecular Weight Calculator calculates the molecular mass of any
 * nucleotide (DNA/RNA). It is calculated as the sum of the mass of each
 * constituent nucleotide multiplied by the number of nucleotide in the
 * molecular formula. The user place a FASTA in the text field or upload a FASTA
 * file.
 *
 * @author salbassam
 */
public class MolecularWeight {

    private static HashMap<Character, Double> molecularWeights = new HashMap<Character, Double>();

    static {
        MolecularWeight.molecularWeights.put('A', 115.1310);
        MolecularWeight.molecularWeights.put('T', 131.1736);
        MolecularWeight.molecularWeights.put('G', 174.2017);
        MolecularWeight.molecularWeights.put('C', 131.1736);
        MolecularWeight.molecularWeights.put('U', 112.08676);
    }

    /**
     *
     * @param userInput
     * @return
     */
    public HashMap<String, String> digestUserInput(String userInput) {
//      Define variables with each its certain type.
        HashMap<String, String> fastaMap = new HashMap<String, String>();
        String sequence = "";
        String header = "";

//                create a List with headers and sequences without \n
        List<String> seqList = Arrays.asList(userInput.split("\n"));
//                loop through List
        for (String fastaElement : seqList) {
//                    skip line if it's a header
            if (fastaElement.contains(">")) {
//                      when headers are found
                header = fastaElement;
            } else {
//                        fill variable with sequences
                sequence = sequence + fastaElement.toUpperCase() + "\n";
            }
        }
//                   get sequences and store them in a HashMap with its header
        fastaMap.put(header, sequence);

        return fastaMap;
    }

    /**
     * Calculate the sum of each character (its molecular mass).
     *
     * @param fastaMap
     * @return the Mol mass
     */
    public double calculateMolMass(HashMap<String, String> fastaMap) {
        double mw = 0;
        for (Map.Entry<String, String> fasta : fastaMap.entrySet()) {
//            String header = fasta.getKey();
            String sequence = fasta.getValue();
            for (int i = 0; i < sequence.length(); i++) {
                char c = sequence.charAt(i);
                mw += MolecularWeight.molecularWeights.get(c);
            }
        }
        return mw;
    }
}
