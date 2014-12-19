/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.bioinfwebportal.code;

/**
 *
 * @author salbassam <s.albassam@st.hanze.nl>
 */
class AmbiguityConverter {

    /**
     *
     * @param ambiguity
     * @return
     */
    public String ambiguities(String ambiguity) {
        String nucleotides = iUPACToNucleotides(ambiguity);
        return nucleotides;
    }

    /**
     *
     * @param iUPACString input string
     * @return returns the input string as a string that matches the IUPAC
     * string in codons.
     */
    public String iUPACToNucleotides(String iUPACString) {
        String codons = "";
        for (int i = 0; i < iUPACString.length(); i++) {
            if (iUPACString.substring(i, i + 1).equals("A")) {
                codons = codons + "A";
            }
            if (iUPACString.substring(i, i + 1).equals("C")) {
                codons = codons + "C";
            }
            if (iUPACString.substring(i, i + 1).equals("G")) {
                codons = codons + "G";
            }
            if (iUPACString.substring(i, i + 1).equals("T")) {
                codons = codons + "T";
            }
            if (iUPACString.substring(i, i + 1).equals("R")) {
                codons = codons + "AG";
            }
            if (iUPACString.substring(i, i + 1).equals("Y")) {
                codons = codons + "CT";
            }
            if (iUPACString.substring(i, i + 1).equals("S")) {
                codons = codons + "GC";
            }
            if (iUPACString.substring(i, i + 1).equals("W")) {
                codons = codons + "AT";
            }
            if (iUPACString.substring(i, i + 1).equals("K")) {
                codons = codons + "GT";
            }
            if (iUPACString.substring(i, i + 1).equals("M")) {
                codons = codons + "AC";
            }
            if (iUPACString.substring(i, i + 1).equals("B")) {
                codons = codons + "CGT";
            }
            if (iUPACString.substring(i, i + 1).equals("D")) {
                codons = codons + "AGT";
            }
            if (iUPACString.substring(i, i + 1).equals("H")) {
                codons = codons + "ACT";
            }
            if (iUPACString.substring(i, i + 1).equals("V")) {
                codons = codons + "ACG";
            }
            if (iUPACString.substring(i, i + 1).equals("N")) {
                codons = codons + "ACGT";
            }
            if (iUPACString.substring(i, i + 1).equals(".") || iUPACString.substring(i, i + 1).equals("-")) {
                codons = codons + "ACGT";
            }
        }
        return codons.replaceAll("\\s", "");
    }
}
