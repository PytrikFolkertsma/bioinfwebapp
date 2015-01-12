/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.salbassam.bioinfwebapp.MolecularWeightCalculator;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author salbassam <s.albassam@st.hanze.nl>
 */
class SequenceComplementer {

    /**
     *
     */
    private final Map<Character, Character> translationMap;

    /**
     *
     * @param from
     * @param to
     */
    public SequenceComplementer(String from, String to) {
        translationMap = new HashMap<Character, Character>();

        if (from.length() != to.length()) {
            throw new IllegalArgumentException(
                    "The from and to strings must be of the same length");
        }

        for (int i = 0; i < from.length(); i++) {
            translationMap.put(from.charAt(i), to.charAt(i));
        }
    }

    /**
     *
     * @param str
     * @return
     */
    public String translate(String str) {
        StringBuilder buffer = new StringBuilder(str);

        for (int i = 0; i < buffer.length(); i++) {
            Character ch = buffer.charAt(i);
            Character replacement = translationMap.get(ch);
            if (replacement != null) {
                buffer.replace(i, i + 1, "" + replacement);
            }
        }
        return buffer.toString();
    }

    /**
     *
     * @param str
     * @param deleteChars
     * @return
     */
    public String translate(String str, String deleteChars) {
        StringBuilder buffer = new StringBuilder(str);
        char[] deletions = deleteChars.toCharArray();
        for (char ch : deletions) {
            int index;
            if ((index = buffer.indexOf("" + ch)) != -1) {
                buffer.deleteCharAt(index);
            }
        }

        return translate(buffer.toString());
    }
}
