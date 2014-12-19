/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.bioinfwebportal.code;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
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

    /**
     * Create Molecular Weights map.
     */
    private static final HashMap<Character, Double> molecularWeights = new HashMap<Character, Double>();

    /**
     * Make map static and put the average Mol weight of each nucleotide.
     */
    static {
        MolecularWeight.molecularWeights.put('A', 115.1310);
        MolecularWeight.molecularWeights.put('T', 131.1736);
        MolecularWeight.molecularWeights.put('G', 174.2017);
        MolecularWeight.molecularWeights.put('C', 131.1736);
        MolecularWeight.molecularWeights.put('U', 112.08676);
    }

    /**
     * Reads FASTA file that was given by the user and returns a HashMap of
     * headers and sequences.
     *
     * @param userInput input FASTA file given by the user.
     * @return HashMap of headers and sequences
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
                if (!header.equals("")) {
                    sequence = "";
                }
//                      when headers are found
                header = fastaElement.replace(">", "");
            } else {
//                        fill variable with sequences
                sequence += fastaElement.toUpperCase();
            }
            fastaMap.put(header, sequence);
        }
//                   get sequences and store them in a HashMap with its header

        return fastaMap;
    }

    /**
     * Converts Ambiguity Codes From Sequence.
     *
     * @param fastaMap map with headers and sequences.
     * @return converted sequences in map
     */
    public Map<String, String> convertAmbiguityCodesFromSequence(HashMap<String, String> fastaMap) {
        Map<String, String> convertedSeqMap = new HashMap<String, String>();
        String convertedSequence;
        for (Map.Entry<String, String> fasta : fastaMap.entrySet()) {
            String header = fasta.getKey();
            String sequence = fasta.getValue().toUpperCase();
            AmbiguityConverter ac = new AmbiguityConverter();
            convertedSequence = ac.ambiguities(sequence);
            convertedSeqMap.put(header, convertedSequence);
        }
        return convertedSeqMap;
    }

    /**
     * Retrieves sequences from fastamap and returns double strand sequence if
     * requested by user.
     *
     * @param fastaMap map with headers and sequences.
     * @return double stranded sequences
     */
    public Map<String, String> getDoubleStrand(HashMap<String, String> fastaMap) {
        Map<String, String> doubleStrandMap = new HashMap<String, String>();
        SequenceComplementer st = new SequenceComplementer("ATCG", "TAGC");
        for (Map.Entry<String, String> fasta : fastaMap.entrySet()) {
            String header = fasta.getKey();
            String sequence = fasta.getValue().toUpperCase();
            String s = st.translate(sequence);
            String dsSequence = sequence + s;
            doubleStrandMap.put(header, dsSequence);
        }
        return doubleStrandMap;
    }

    /**
     * Calculate the sum of each character (its molecular mass). NOTE: still
     * under construction.
     *
     * @param fastaMap
     * @return the Mol mass
     */
    public Map<String, Double> calculateMolMass(HashMap<String, String> fastaMap) {
        double mw = 0;
        double invalidChar = 0;

//      testing header + total molweight without ambiguity
        Map<String, Double> testmap = new HashMap<String, Double>();
//      create a list with total mol weight with ambiguity mol weight
        List<Double> molList = new ArrayList<Double>();
//      create a hashmap with header as key and as value a list with the total molweight, possible molweight option A and option B of ambiguity, and as last the number of invalid characters in sequence
        Map<String, ArrayList<Double>> resultMap = new HashMap<String, ArrayList<Double>>();

        for (Map.Entry<String, String> fasta : fastaMap.entrySet()) {
            String header = fasta.getKey();
            String sequence = fasta.getValue().toUpperCase();
            for (int i = 0; i < sequence.length(); i++) {
                char c = sequence.charAt(i);
                try {
                    mw += MolecularWeight.molecularWeights.get(c);
                    testmap.put(header, mw);
                } catch (NullPointerException e) {
                    invalidChar++;
                }
            }

            mw = 0;

        }
        return testmap;
    }

    /**
     * NOTE: still under construction.
     *
     * @param countAmbiguity
     * @param nucleotide
     * @return
     */
    private double calculateMolMassOfAmbiguity(int countAmbiguity, char nucleotide) {
        Map<String, ArrayList<Double>> ambiguityMolMassMap = new HashMap<String, ArrayList<Double>>();
//        char nucleotide = ambiguity letter as KEY
//        arraylist of possible mol mass of ambiguity letter as VALUE
        ArrayList<Double> molMassList = new ArrayList<Double>();

        return 0;
    }
}
