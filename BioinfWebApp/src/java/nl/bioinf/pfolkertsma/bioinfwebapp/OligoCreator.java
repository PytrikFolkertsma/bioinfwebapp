/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.pfolkertsma.bioinfwebapp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * OligoCreator class. Creates an OligoCreator object.
 * @author pfolkertsma
 */
public class OligoCreator {
    /**
     * A Path object which contains the path to the given fasta file.
     */
    private Path pathFastafile;
    /**
     * A string array which contains the descriptions of the sequences from the fasta file.
     */
    private String[] descriptions;
    /**
     * A string array which contains the sequences of the fasta file.
     */
    private String[] sequences;
    /**
     * This method sets the parameter pathFastafile.
     * @param path a string of the path to the fasta file.
     */
    public void setPathFastafile(String path){
        pathFastafile = Paths.get(path);
    }
    /**
     * This method creates the oligos from the sequences and writes them to a fasta file.
     * @param oligoPath the path for the new file with oligos.
     */
    public void writeOligosToFasta(String oligoPath) {
        try {
            Path file = Paths.get(oligoPath);
            BufferedWriter output = Files.newBufferedWriter(file, Charset.defaultCharset());
            int i = 0;
            for (String seq : sequences) {
                for (int index = 0; index < seq.length() - (Input.getSize()-1); index++) {
                    Oligo oligo = new Oligo();
                    oligo.sequence = seq.substring(index, index + Input.getSize()).toUpperCase();
                    if (oligo.calculateMeltingTemp() > Input.getMinTemp() && oligo.calculateMeltingTemp() < Input.getMaxTemp() && oligo.checkNucleotides()) {
                        output.write(descriptions[i] + "|oligo" + (index + 1) + System.getProperty("line.separator") + oligo.sequence + System.getProperty("line.separator"));
                    }
                }
            }
            output.close();
        } catch (IOException e) {
        }
    }
    /**
     * This method parses the fasta file: it creates a string array of the descriptions and a string array of the sequences.
     */
    public void parseFastafile() {
        List desc = new ArrayList();
        List seq = new ArrayList();
        try {
            BufferedReader reader;
            reader = Files.newBufferedReader(pathFastafile, Charset.defaultCharset());
            StringBuffer buffer = new StringBuffer();
            String line = reader.readLine();
             if (line != null && line.charAt(0) == '>'){
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
            e.printStackTrace();
        }
        descriptions = new String[desc.size()];
        sequences = new String[seq.size()];
        for (int i = 0; i < seq.size(); i++) {
            descriptions[i] = (String) desc.get(i);
            sequences[i] = (String) seq.get(i);
        }
    }
}
