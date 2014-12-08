/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package nl.bioinf.eschutte.bioinfwebportal.code;

/**
 *
 * @author eschutte
 */
public enum AminoAcid {
    ALANINE {
        @Override
        public String getThreeLetterCode() {
            return "Ala";
        }
        @Override
        public String getOneLetterCode() {
            return "A";
        }
    },
    ASPARAGINE_ASPARTATE {
        @Override
        public String getThreeLetterCode() {
            return "Asx";
        }
        @Override
        public String getOneLetterCode() {
            return "B";
        }
    },
    CYSTEINE {
        @Override
        public String getThreeLetterCode() {
            return "Cys";
        }
        @Override
        public String getOneLetterCode() {
            return "C";
        }
    },
    ASPARTIC_ACID {
        @Override
        public String getThreeLetterCode() {
            return "Asp";
        }
        @Override
        public String getOneLetterCode() {
            return "D";
        }
    },
    GLUTAMIC_ACID {
        @Override
        public String getThreeLetterCode() {
            return "Glu";
        }
        @Override
        public String getOneLetterCode() {
            return "E";
        }
    },
    PHENYLALANINE {
        @Override
        public String getThreeLetterCode() {
            return "Phe";
        }
        @Override
        public String getOneLetterCode() {
            return "F";
        }
    },
    GLYCINE {
        @Override
        public String getThreeLetterCode() {
            return "Gly";
        }
        @Override
        public String getOneLetterCode() {
            return "G";
        }
    },
    HISTIDINE {
        @Override
        public String getThreeLetterCode() {
            return "His";
        }
        @Override
        public String getOneLetterCode() {
            return "H";
        }
    },
    ISOLEUCINE {
        @Override
        public String getThreeLetterCode() {
            return "Ile";
        }
        @Override
        public String getOneLetterCode() {
            return "I";
        }
    },
    LEUCINE_ISOLEUCINE {
        @Override
        public String getThreeLetterCode() {
            return "Xle";
        }
        @Override
        public String getOneLetterCode() {
            return "J";
        }
    },
    LYSINE {
        @Override
        public String getThreeLetterCode() {
            return "Lys";
        }
        @Override
        public String getOneLetterCode() {
            return "K";
        }
    },
    LEUCINE {
        @Override
        public String getThreeLetterCode() {
            return "Leu";
        }
        @Override
        public String getOneLetterCode() {
            return "L";
        }
    },
    METHIONINE {
        @Override
        public String getThreeLetterCode() {
            return "Met";
        }
        @Override
        public String getOneLetterCode() {
            return "M";
        }
    },
    ASPARAGINE {
        @Override
        public String getThreeLetterCode() {
            return "Asn";
        }
        @Override
        public String getOneLetterCode() {
            return "N";
        }
    },
    PYRROLYSINE {
        @Override
        public String getThreeLetterCode() {
            return "Pyl";
        }
        @Override
        public String getOneLetterCode() {
            return "O";
        }
    },
    PROLINE {
        @Override
        public String getThreeLetterCode() {
            return "Pro";
        }
        @Override
        public String getOneLetterCode() {
            return "P";
        }
    },
    GLUTAMINE {
        @Override
        public String getThreeLetterCode() {
            return "Gln";
        }
        @Override
        public String getOneLetterCode() {
            return "Q";
        }
    },
    ARGININE {
        @Override
        public String getThreeLetterCode() {
            return "Arg";
        }
        @Override
        public String getOneLetterCode() {
            return "R";
        }
    },
    SERINE {
        @Override
        public String getThreeLetterCode() {
            return "Ser";
        }
        @Override
        public String getOneLetterCode() {
            return "S";
        }
    },
    THREONINE {
        @Override
        public String getThreeLetterCode() {
            return "Thr";
        }
        @Override
        public String getOneLetterCode() {
            return "T";
        }
    },
    SELENOCYSTEINE {
        @Override
        public String getThreeLetterCode() {
            return "Sec";
        }
        @Override
        public String getOneLetterCode() {
            return "U";
        }
    },
    VALINE {
        @Override
        public String getThreeLetterCode() {
            return "Val";
        }
        @Override
        public String getOneLetterCode() {
            return "V";
        }
    },
    TRYPTOPHAN {
        @Override
        public String getThreeLetterCode() {
            return "Trp";
        }
        @Override
        public String getOneLetterCode() {
            return "W";
        }
    },
    UNKOWN {
        @Override
        public String getThreeLetterCode() {
            return "Xaa";
        }
        @Override
        public String getOneLetterCode() {
            return "X";
        }
    },
    TYROSINE{
        @Override
        public String getThreeLetterCode() {
            return "Tyr";
        }
        @Override
        public String getOneLetterCode() {
            return "Y";
        }
    },
    GLUTAMINE_GLUTAMATE{
        @Override
        public String getThreeLetterCode() {
            return "Glx";
        }
        @Override
        public String getOneLetterCode() {
            return "Z";
        }
    };
    /**
     * returns the three letter code.
     * @return th
     */
    public String getThreeLetterCode(){
        throw new IllegalArgumentException();
    }
    /**
     * returns the single letter code for the amino acid.
     * @return 
     */
    public String getOneLetterCode(){
        throw new IllegalArgumentException();
    }
    /**
     * returns the full name of the amino acid, first char is capital.
     * @return fullName
     */
    public String getName() {
        return Character.toUpperCase(this.name().charAt(0))
                + this.name().substring(1).toLowerCase();
    }

    public String toString() {
        return getName();
    }
    
}
