/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.salbassam.bioinfwebapp.MolecularWeightCalculator;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
     * Path of the FASTA file.
     */
    private Path pathFastafile;
    /**
     * A string array which contains the descriptions of the sequences from the
     * fasta file.
     */
    private String[] descriptions;
    /**
     * A string array which contains the sequences of the fasta file.
     */
    private String[] sequences;
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
     * Sets the FASTA file path.
     *
     * @param path
     */
    public void setPathFastafile(String path) {
        pathFastafile = Paths.get(path);
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
     * converts the arraylists to a HashMap.
     *
     * @return hashmap of fasta header and sequences.
     */
    public HashMap<String, String> convertToHashMap() {
        HashMap<String, String> fastaFormat = new HashMap<String, String>();
        for (int i = 0; i < descriptions.length; i++) {
            String header = descriptions[i];
            String seq = sequences[i];
            fastaFormat.put(header, seq);
        }
        return fastaFormat;
    }

    /**
     * Creates two ArrayLists with fasta format {descriptions[]:sequences[]}.
     */
    public void parseFastafile() {
        List desc = new ArrayList();
        List seq = new ArrayList();
        try {
            BufferedReader reader;
            reader = Files.newBufferedReader(pathFastafile, Charset.defaultCharset());
            StringBuffer buffer = new StringBuffer();
            String line = reader.readLine();
            if (line != null && line.charAt(0) == '>') {
                desc.add(line);
            }
            for (line = reader.readLine().trim(); line != null; line = reader.readLine()) {
                if (line.length() > 0 && line.charAt(0) == '>') {
                    seq.add(buffer.toString());
                    buffer = new StringBuffer();
                    desc.add(line);
                } else {
                    buffer.append(line.trim());
                }
            }
            if (buffer.length() != 0) {
                seq.add(buffer.toString());
            }
        } catch (IOException e) {
            System.out.println("Error when reading " + pathFastafile);
        }
        descriptions = new String[desc.size()];
        sequences = new String[seq.size()];
        for (int i = 0; i < seq.size(); i++) {
            descriptions[i] = (String) desc.get(i);
            sequences[i] = (String) seq.get(i);
        }
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
        AmbiguityConverter ac = new AmbiguityConverter();
        for (Map.Entry<String, String> fasta : fastaMap.entrySet()) {
            String header = fasta.getKey();
            String sequence = fasta.getValue().toUpperCase();
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

//      testing header + total molweight with ambiguity
        Map<String, Double> testmap = new HashMap<String, Double>();
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
     * checkValidSequence checks if sequence of fasta description has numbers.
     *
     * @param fastaMap map of descriptions and sequences.
     * @return string message to user.
     */
    public String checkValidSequence(HashMap<String, String> fastaMap) {
        int countIll = 0;
        String key = "";
        for (Map.Entry<String, String> entrySet : fastaMap.entrySet()) {
            key = entrySet.getKey();
            String sequence = entrySet.getValue().toUpperCase();
            for (int i = 0; i < sequence.length(); i++) {
                if (Character.isDigit(sequence.charAt(i))) {
                    countIll++;
                } else {
                    System.out.println(key + " has ambiguity in sequence.");
                }
            }
        }

        return "sequence has" + countIll + " numbers in name: " + key;
    }

}
