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
public enum Nucleotide {
     A{
        @Override
        public String getBase(){
            return "Adenine";
        }
     },
     C{
        @Override
        public String getBase(){
            return "Cytosine";
        }
     },
     G{
        @Override
        public String getBase(){
            return "Guanine";
        }
     },     
     T{
        @Override
        public String getBase(){
            return "Thymine";
        }
     },     
     R{
        @Override
        public String getBase(){
            return "Adenine & Guanine";
        }
     },     
     Y{
        @Override
        public String getBase(){
            return "Cytosine & Thymine";
        }
     },     
     S{
        @Override
        public String getBase(){
            return "Guanine & Cytosine";
        }
     },     
     W{
        @Override
        public String getBase(){
            return "Adeninte & Thymine";
        }
     },     
     K{
        @Override
        public String getBase(){
            return "Guanine & Thymine";
        }
     },     
     M{
        @Override
        public String getBase(){
            return "Adenine & Cytosine";
        }
     },     
     B{
        @Override
        public String getBase(){
            return "Cytosine, Guanine & Thymine";
        }
     },     
     D{
        @Override
        public String getBase(){
            return "Adenine, Guanine & Thymine";
        }
     },     
     H{
        @Override
        public String getBase(){
            return "Adenine, Cytosine & Thymine";
        }
     },     
     V{
        @Override
        public String getBase(){
            return "Adenine, Cytosine & Guanine";
        }
     },
     N{
        @Override
        public String getBase(){
            return "Adenine, Cytosine, Guanine & Thymine";
        }
     };
    
    public String getBase() {
        throw new IllegalArgumentException();
    }
    public String getName() {
        return Character.toUpperCase(this.name().charAt(0))
                + this.name().substring(1).toLowerCase();
    }
    public String toString() {
        return getName();
    }
}
