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
 *
 * @author pfolkertsma
 */
public class OligoCreator {

    private Path pathFastafile;

    private String fileLines;
    private String[] descriptions;
    private String[] sequences;


    public void setPathFastafile(String path){
        pathFastafile = Paths.get(path);
    }

    public void writeOligosToFasta(String oligoPath) {
        try {
            Path file = Paths.get(oligoPath);
            
            BufferedWriter output = Files.newBufferedWriter(file, Charset.defaultCharset());
            int i = 0;

            for (String seq : sequences) {
                for (int index = 0; index < seq.length() - (Input.getSize()-1); index++) {
                    Oligo oligo = new Oligo();
                    oligo.sequence = seq.substring(index, index + Input.getSize()).toUpperCase();
                    
                    /*
                    if (Input.isMonoRepeats() && oligo.checkMonoRepeats()) {continue;}
                    if (Input.isDiRepeats() && oligo.checkDiRepeats()) {continue;}
                    if (Input.isHairpins() && oligo.checkHairpin()) {continue;}
                    */ 
                    
                    if (oligo.calculateMeltingTemp() > Input.getMinTemp()
                            && oligo.calculateMeltingTemp() < Input.getMaxTemp()
                            && oligo.checkNucleotides(oligo.sequence)) {

                        String enter = System.getProperty("line.separator");
                        output.write(descriptions[i] + "|oligo" + (index + 1)
                                + "|Mono:" + oligo.checkMonoRepeats()
                                + "|Di:" + oligo.checkDiRepeats()
                                + "|Hairpin:" + oligo.checkHairpin()
                                + "|Temp:" + oligo.calculateMeltingTemp()
                                + enter + oligo.sequence + enter);
                    }
                }
            }
            output.close();
        } catch (IOException e) {
        }

    }

    public void parseFastafile() {
        List desc = new ArrayList();
        List seq = new ArrayList();

        try {
            BufferedReader reader;
            reader = Files.newBufferedReader(pathFastafile, Charset.defaultCharset());

            StringBuffer buffer = new StringBuffer();

            String line = reader.readLine();

            if (line == null) {
                throw new IOException(pathFastafile + " is an empty file");
            }
            if (line.charAt(0) != '>') {
                throw new IOException("First line of " + pathFastafile + " should start with '>'");
            } else {
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
