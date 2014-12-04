$(document).ready(function() {
    $('#report').DataTable();
} );
$(document).ready(function() {
    $('#nucs').DataTable();
} );
$(document).ready(function() {
    $('#blast').DataTable();
} );


var Dict = {};
Dict["Phenylalanine"] = '<img src="images/AminoAcids/Phenylalanine_structure.png" alt="Structure of Phenylalanine" /><br/>Phenylalanine is an alpha-amino acid. It has a chemical formula of C<sub>6</sub>H<sub>5</sub>CH<sub>2</sub>CH(NH<sub>2</sub>)COOH.This amino acids is encode by the genetic code codons<ul><li>UUU</li><li>UUC</li></ul>It is non polar and it is a Large amino acid. it is an precursor for Tyrosine.<br/><br/><h4>Properties</h4><ul><li>Molecular Formula: C<sub>9</sub>H<sub>11</sub>NO<sub>2</sub></li><li>Molar mass:	165.19 gram</li></ul>';
Dict["Glutamate"] = '<img src="images/AminoAcids/Glutamate_structure.png" alt="Structure of Glutamate_structure" /><br/>Glutamate is an 20-23 proteinogenic amino acid. It has a chemical formula of HOOC(CH<sub>2</sub>)<sub>2</sub>CH(NH<sub>3</sub>). This amino acids is encode by the genetic code codons<ul><li>GAA</li><li>GAG</li></ul>It is negative and it is a Large amino acid. It is an important neurotransmitter.<br/><br/><h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>9</sub>NO<sub>4</sub></li><li>Molar mass:	147.13 gram</li><li>Appearnce: White Crystals or Powder</li><li>Density: 1.4601 (20&deg;C)</li><li>Melting point: 199&deg;C decomp</li></ul>';
Dict["Aspartate"] = '<img src="images/AminoAcids/Aspartate_structure.png" alt="Structure of Aspartate" /><br/>Aspartate is an alpha-amino acid. It has a chemical formula of HOOCCH(NH<sub>2</sub>)CH<sub>2</sub>COOH. This amino acids is encode by the genetic code codons<ul><li>GAU</li><li>GAC</li></ul>It is negative and it is a medium amino acid.<br/><br/><h4>Properties</h4><ul><li>Molecular Formula: C<sub>4</sub>H<sub>7</sub>NO<sub>4</sub></li><li>Molar mass:	133.10 gram</li><li>Appearnce: Colourless Crystals</li><li>Density: 1.7 g/cm<sup>3</sup></li><li>Melting point: 270&deg;C</li><li>Solubility(water): 4.7 g/l</li></ul>';
Dict["Cysteine"] = '<img src="images/AminoAcids/Cysteine_structure.png" alt="Structure of Cysteine" /><br/>Cysteine is an alpha-amino acid. It has a chemical formula of HO<sub>2</sub>CcH(NH<sub>2</sub>)CH2<sub>2</sub>SH. This amino acids is encode by the genetic code codons<ul><li>UGU</li><li>UGC</li></ul>It is non-polar and it is a medium-small amino acid. It can be biosynthesized in humans.<br/><br/><h4>Properties</h4><ul><li>Molecular Formula: C<sub>3</sub>H<sub>7</sub>NO<sub>2</sub>S</li><li>Molar mass:	121.16 gram</li><li>Appearnce: White Crystals or Powder</li><li>Density: unknown</li><li>Melting point: 240&deg;C decomp</li><li>Solubility(water): soluble</li></ul>';
Dict["Alanine"] = '<img src="images/AminoAcids/Alanine_structure.png" alt="Structure of alanine" /><br/>Alanine is an alpha-amino acid. It has a chemical formula of CH<sub>3</sub>CH(NH<sub>2</sub>)COOH. This amino acids is encode by the genetic code codons<ul><li>GCU</li><li>GCC</li><li>GCA</li><li>GCG</li> </ul> It is non-polar and it is a small amino acid. It occurse the second most of the amino acids in proteins.<br/><br/><h4>Properties</h4> <ul><li>Molecular Formula: C<sub>3</sub>H<sub>7</sub>NO<sub>2</sub></li><li>Molar mass:	89.09 gram</li><li>Appearnce: White Powder</li> <li>Density: 1.424 g/cm<sup>3</sup></li><li>Melting point: 258&deg;C,  496&deg;F,   531K</li><li>Solubility(water): 167.2 g/L  at 25&deg;C</li></ul>';
Dict["Glycine"] = '<img src="images/AminoAcids/Glycine_structure.png" alt="Structure of Glycine" /><br/> Glycine is the smallest amino acid. It has a chemical formula of NH<sub>2</sub>CH<sub>2</sub>COOH.This amino acids is encode by the genetic code codons<ul><li>GGU</li><li>GGC</li><li>GGA</li><li>GGG</li> </ul>Glycine is colourless and it is sweet-tasting.it is not chiral and that is unique in the proteinogenic amino acids.<br/><br/><h4>Properties</h4><ul><li>Molecular Formula: C<sub>2</sub>H<sub>5</sub>NO<sub>2</sub></li><li>Molar mass:	75.07 gram</li> <li>Appearance:	White Solid</li><li>Density:	1.607 g/cm<sup>3</sup></li><li>melting point:	233&deg;C</li><li>Solubility: 24.99 g/100ml</li></ul>';
Dict["Histidine"] = '<img src="images/AminoAcids/Histidine_structure.png" alt="Structure of Histidine" /><br/>Histidine is an alpha-amino acid, it has an imidazole functional group. This amino acids is encode by the genetic code codons<ul><li>CAU</li><li>CAC</li></ul>Histidine is an essential amno acid. Humans and mammals use it. It was first thought that it was only essential for infants. But more research has shown that it is also usefull for adults.<br/><br/><h4>Properties</h4><ul><li>Molecular Formula: C<sub>6</sub>H<sub>9</sub>N<sub>3</sub>O<sub>2</sub></li><li>Molar mass:	155.15 gram</li><li>Solubility: 4.19 g/100ml</li></ul>';
Dict["Isoleucine"] = '<img src="images/AminoAcids/Isoleucine_structure.png" alt="Structure of Isoleucine" /><br/>Isoleucine is an alpha-amino acid, it cannot be synthesized by human body. This amino acids is encode by the genetic code codons<ul><li>AUU</li><li>AUC</li><li>AUA</li></ul>Isoleucine is an hydrophobic amino acid. It has an chiral side chain. just like Threonine. There are 4 different stereoisomers of isoleucine possible. <h4>Properties</h4><ul><li>Molecular Formula: C<sub>6</sub>H<sub>13</sub>NO<sub>2</sub></li><li>Molar mass:	131.17 gram</li> </ul>';
Dict["Lysine"] = '<img src="images/AminoAcids/Lysine_structure.png" alt="Structure of Lysine" /> <br/>Lysine is an alpha-amino acid. The chemical formula is: HO<sub>2</sub>CCH(NH<sub>2</sub>)(CH<sub>2</sub>)<sub>4</sub>NH<sub>2</sub>.This amino acids is encode by the genetic code codons<ul><li>AAA</li><li>AAG</li></ul>Lysine is a base. The amino gruop is often seen as a general base in catalysis.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>6</sub>H<sub>14</sub>N<sub>2</sub>O<sub>2</sub></li><li>Molar mass: 146.19 gram</li><li>Solubility: 1.5 Kg/L</li></ul>';
Dict["Leucine"] = '<img src="images/AminoAcids/Leucine_structure.png" alt="Structure of Leucine" /> <br/>Leucine is an alpha-amino acid. The chemical formula is: HO<sub>2</sub>CCH(NH<sub>2</sub>)CH<sub>2</sub>CH(CH<sub>3</sub>)<sub>2</sub>. This amino acids is encode by the genetic code codons<ul><li>UUA</li><li>UUG</li><li>CUU</li><li>CUC</li><li>CUA</li> <li>CUG</li> </ul>Leucine is an hydrophobic amino acids.it is a component of multiple subunits for buffer proteins.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>6</sub>H<sub>13</sub>NO<sub>2</sub></li><li>Molar mass: 131.17 gram</li></ul>';
Dict["Methionine"] = '<img src="images/AminoAcids/Methionine_structure.png" alt="Structure of Methionine" /><br/>>Methionine is an alpha-amino acid. The chemical formula is: HO<sub>2</sub>CCH(NH<sub>2</sub>)CH<sub>2</sub>CH<sub>2</sub>SCH<sub>3</sub>.This amino acids is encode by the genetic code codons<ul><li>AUG</li></ul>Methionine is an nonpolar amino acid. It only has 1 codon and it indicates the mrna coding regeion where the traslation into proteins begins.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>11</sub>NO<sub>2</sub>S</li><li>Molar mass: 149.21 gram</li><li>Apearance: White crystalline powder</li><li>Density: 1.340 g/cm<sup>3</sup></li><li>Meldint point: 281&deg;C decomp</li><li>solubiity: soluble</li></ul>';
Dict["Asparagine"] = '<img src="images/AminoAcids/Asparagine_structure.png" alt="Structure of Asparagine" /><br/> Asparagine is one of the most common amino acids(on earth) It is however not a essential amino acid.This amino acids is encode by the genetic code codons<ul><li>AAU</li><li>AAC</li></ul>Asparagine can react with reducing sugars to produce acrylamide in food when this is sufficient heated. <h4>Properties</h4><ul><li>Molecular Formula: C<sub>4</sub>H<sub>8</sub>NO<sub>2</sub>O<sub>3</sub></li><li>Molar mass: 132.12 gram</li><li>Apearance: White crystals</li><li>Density: 1.543 g/cm<sup>3</sup></li><li>Meldint point: 234&deg;C</li><li>solubiity: 2.94 g/100 Ml</li></ul>';
Dict["Proline"] = '<img src="images/AminoAcids/Proline_structure.png" alt="Structure of Proline" /><br/>Proline is an alpha-amino acid. It is not an essential amoni acid this means the human body can make it. This amino acids is encode by the genetic code codons<ul><li>CCU</li><li>CCC</li><li>CCA</li><li>CCG</li></ul>Proline The amine nitrogen is bound to two alkyl groups, thatis why it is a secondary amine.  <h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>9</sub>NO<sub>2</sub></li><li>Molar mass: 115.13 gram</li><li>Apearance: Transparent crystals</li><li>Meldint point: 205 to 228&deg;C</li><li>solubiity: 1.5 g/100 Ml</li></ul>';
Dict["Glutamine"] = '<img src="images/AminoAcids/Glutamine_structure.png" alt="Structure of Glutamine" /><br/>Glutamine is also called L-glutamine. This amino acids is encode by the genetic code codons<ul><li>CAA</li><li>CAG</li></ul>Glutamine is the most abundant free amino acid. It has a concentration of 500-900 umol/L.  <h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>10</sub>N<sub>2</sub>O<sub>3</sub></li><li>Molar mass: 146.14 gram</li><li>Meldint point: 185&deg;C</li><li>solubiity: soluble</li></ul>';
Dict["Arginine"] = '<img src="images/AminoAcids/Arginine_structure.png" alt="Structure of Arginine" /><br/>Arginine is an alpha-amino acid. It is one of the most common natural amino acids.This amino acids is encode by the genetic code codons<ul><li>CGU</li><li>CGC</li><li>CGA</li><li>CGG</li><li>AGA</li><li>AGG</li></ul>Arginine was first isolated in 1886. Usally the body creates arginine by itself in sufficient amounts to sustain life.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>6</sub>H<sub>14</sub>N<sub>4</sub>O<sub>2</sub></li><li>Molar mass: 174.20 gram</li><li>Appearance: White crystals</li><li>Odor: Odourless</li><li>Meldint point: 260&deg;C</li><li>solubiity: 14.87 g/100 mL</li></ul>';
Dict["Serine"] = '<img src="images/AminoAcids/Serine_structure.png" alt="Structure of Serine" /><br/>Serine is one of the proteinoenic amino acids. it has an chemical formula of HO<sub>2</sub>CCH(NH<sub>2</sub>)CH<sub>2</sub>OH.This amino acids is encode by the genetic code codons<ul><li>UCU</li><li>UCC</li><li>UCA</li><li>UCG</li><li>AGU</li><li>AGC</li></ul>Serine is classified as a polar amino acid because of the hydroxyl group.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>3</sub>H<sub>7</sub>NO<sub>3</sub></li><li>Molar mass: 105.09 gram</li><li>Appearance: White crystals or powder</li><li>Density: 1.603 g/cm<sup>3</sup><li>Meldint point: 246&deg;C</li><li>solubiity: soluble</li></ul>';
Dict["Threonine"] = '<img src="images/AminoAcids/Threoine_structure.png" alt="Structure of Threoine" />T<br/>hreoine is an alpha-amino acid. it has an chemical formula of HO<sub>2</sub>CCH(NH<sub>2</sub>)CH(OH)CH<sub>3</sub>. This amino acids is encode by the genetic code codons<ul><li>ACU</li><li>ACA</li><li>ACC</li><li>ACG</li></ul>Threonine is classified as a polar amino acid. It is one of the two amino acids that are bearing an alcohol group.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>4</sub>H<sub>9</sub>NO<sub>3</sub></li><li>Molar mass: 119.12 gram</li><li>solubity: 10.6(30&deg;)</li></ul>';
Dict["Valine"] = '<img src="images/AminoAcids/Valine_structure.png" alt="Structure of Valine" /><br/>Valine is an alpha-amino acid. it has an chemical formula of HO<sub>2</sub>CCH(NH<sub>2</sub>)CH(CH<sub>3</sub>)<sub>2</sub>.This amino acids is encode by the genetic code codons<ul><li>GUU</li><li>GUC</li><li>GUA</li><li>GUG</li></ul>Valine is an essential amino acid and is classified as non polar. It is named after the plant valerian. In sickle-cell disease valine substitutes glutamate in hemoglobin.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>11</sub>NO<sub>2</sub></li><li>Molar mass: 117.15 gram</li><li>Density: 1.316 g/cm<sup>3</sup></li><li>Melting point: 298 &deg;C</li><li>solubity: soluble</li></ul>';
Dict["Tryptophan"] = '<img src="images/AminoAcids/Tryptophan_structure.png" alt="Structure of Tryptophan" /><br/>Tryptophan is one of the 22 standad amino acids. And is an essential amino acid in the huma diet.This amino acids is encode by the genetic code codons<ul><li>UGG</li></ul>Only the L-tereoisomer of tryptophan is usefull in the structural or enzyme proteins. However R-stereoisomer is found more in naturally produced peptides.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>11</sub>H<sub>12</sub>N<sub>2</sub>O<sub>2</sub></li><li>Molar mass: 204.23 gram</li><li>solubity: soluble 0.23 g/L</li></ul>';
Dict["Tyrosine"] = '<img src="images/AminoAcids/Tyrosine_structure.png" alt="Structure of Tyrosine" /><br/>Tyrosine is also known as 4-hydroxyheylalanine. It was first found in cheese (tyros) therefor the name Tyrosine.This amino acids is encode by the genetic code codons<ul><li>UAC</li><li>UAU</li></ul>It is a non-essential amino acid with a polar side group. When refered as functional group it is also called tyosyl.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>9</sub>H<sub>11</sub>NO<sub>3</sub></li><li>Molar mass: 181.19 gram</li></ul>';
Dict["Selenocysteine"] = '<img src="images/AminoAcids/Selenocysteine_structure.png" alt="Structure of Selenocysteine" /><br/>Selenocysteine is the 21st proeinogenic amino. It exist naurally in all kingdoms of life as a building block of selenoproteins.This amino acids is encode by the genetic code codons<ul><li>UGA</li></ul>It is encoded by a codon that is normally a stop codon. But when there is SECIS present it will become Selenocysteine. This is called recoding.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>3</sub>7<sub>11</sub>NO<sub>2</sub>Se</li><li>Molar mass: 168.05 gram</li></ul>';
Dict["Pyrrolysine"] = '<img src="images/AminoAcids/Pyrrolysine_structure.png" alt="Structure of Pyrrolysine" /><br/>Pyrrolysine is the 22nd proteinogenic amino acid. It is used by some methanogenic archaea and one known bacterium.This amino acids is encode by the genetic code codons<ul><li>UAG</li></ul>It is encoded by a codon that is normally a stop codon. But when there is pylTSBCD present it will become Pyrrolysine. This is called recoding.<h4>Properties</h4><ul><li>Molecular Formula: C<sub>12</sub>7<sub>21</sub>N<sub>3</sub>O<sub>3</sub></li><li>Molar mass: 255.31 gram</li></ul>';


Dict["Adenine"] = '<img src="images/Nucleotiden/Adenine_structure.png" alt="Structure of Adenine"/><br/>Adenine is one of two purine nucleobases. It is molecular formula is:C<sub>5</sub>H<sub>5</sub>N<sub>5</sub>.Its form contains multiple tautomers compounds.The most found form is a 9H-adenine tautomer.Adenine in a double strand of DNA connects to Thymine by using two hydrogen bonds for stabilization. In a double stranded RNA strand Adenine will bond with Uracil, the replacement for Thymine.<br/><br/><img src="pics/377px-Adenine_numbered.svg.png", width="20%" /><h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>5</sub>N<sub>5</sub></li><li>Molar mass:	135.13 g/mol</li><li>Appearance: white to light yellow, crystalline</li><li>Density: 1.6 g/cm<sup>3</sup></li><li>Melting point: 360-365&deg;C,  (680-689&deg;F; 633-638K</li><li>Solubility(water): 0.103 g/100 mL at 25&deg;C</li><li>Acidity (pKa): 4.15 (secondary), 9.80 (primary)</li></ul>';
Dict["Cytosine"] = '<img src="images/Nucleotiden/Cytosine_structure.png"/><br/>Cytosine is one of the two pyrimidines of the four DNA nucleobases. It is molecular formula is: C<sub>4</sub>H<sub>5</sub>N<sub>3</sub>O.The structure contains a heterocyclic aromatic ring and two substitents attached (an amine group at the forth position and a keto group at the second position). Cytosine forms a bond, in a double DNA and RNA strand, with Guanine using three hydrogen bonds.<br/><br/><img src="pics/301px-Cytosine_chemical_structure.svg.png", width="15%" /><h4>Properties</h4><ul><li>Molecular Formula: C<sub>4</sub>H<sub>5</sub>N<sub>3</sub>O</li><li>Molar mass:	111.10 g/mol</li><li>Appearance: -</li><li>Density: 1.55 g/cm<sup>3</sup></li><li>Melting point: 320-325&deg;C (608-617&deg;F; 395-598K) (decomposes)</li><li>Solubility(water): -</li><li>Acidity (pKa): 4.45 (secondary), 12.2 (primary)</li>';
Dict["Thymine"] = '<img src="images/Nucleotiden/Thymine_structure.png", width="25%" /><br/>Thymine is the second pyrimidine nucleobase. It is formula is: C<sub>5</sub>H<sub>5</sub>N<sub>2</sub>O<sub>2</sub>.In a double stranded DNA sequence Thymine bonds with Adenine via two hydrogen bonds. Thymine may be derived by methylation of uracil at the fifth carbon.<br/><br/><img src="pics/250px-Guannum2.png", width="30%" /><h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>5</sub>N<sub>2</sub>O<sub>2</sub></li><li>Molar mass:	126.11 g mol<sup>−1</sup></li><li>Appearance: -</li><li>Density: 1.23 g cm<sup>-3</sup> </li><li>Melting point: 316-317&deg;C (601-603&deg;F; 589-590K) (decomposes)</li><li>Solubility(water): Insoluble</li><li>Acidity (pKa): 9.7</li>';
Dict["Uracil"] = '<img src="images/Nucleotiden/Uracil_structure.png", width="25%" /><br/>Uracil is one of the four nucleobases in RNA, unline Guanine, Adenine and Cytosine, Uracil is only found in RNA and not in DNA. It replaces the Thymine wich is found only in DNA. It has a C<sub>4</sub>H<sub>4</sub>N<sub>2</sub><sub>O2</sub> molecular formula.In double stranded RNA Uracil binds with Adenine. While binding with Adenine, Uracil acts as both a hydrogen bond acceptor and a hydrogen bond donor.Uracil also recycles itself to form nucleotides by undergoing a series of phosphoribosyltransferase reactions. Degradation of uracil produces the substrates aspartate, carbon dioxide and ammonia.<br/><br/><img src="112px-Uracil.svg.png", width="30%" /><h4>Properties</h4><ul><li>Molecular Formula: C<sub>4</sub>H<sub>4</sub>N<sub>2</sub><sub>O2</sub></li><li>Molar mass:	112.08676 g/mol</li><li>Appearnce: solid</li><li>Density: 1.32 g/cm<sup>3</sup> </li><li>Melting point: 335&deg;C (635&deg;F; 608,15K) (decomposes)</li><li>Solubility(water): Soluble</li>';
Dict["Guanine"] = '<img src="images/Nucleotiden/Guanine_structure.png", width="25%" /><br/>Guanine is the second purine nucleobase of the four DNA nucleobases. It has a C<sub>5</sub>H<sub>5</sub>N<sub>5</sub>O molecular formula.Guanine has two tautomeric forms, the major keto form and a rare enol form. The pictures show the major keto form. Guanine binds in a double DNA strand with a Cytosine using three hydrogen bonds.<br/><br/><img src="pics/250px-Guannum2.png", width="30%" /><h4>Properties</h4><ul><li>Molecular Formula: C<sub>5</sub>H<sub>5</sub>N<sub>5</sub>O</li><li>Molar mass:	151.13 g/mol</li><li>Appearance: White amorphous solid</li><li>Density: 2.200 g/cm<sup>3</sup> </li><li>Melting point: 360&deg;C (680&deg;F; 633.15K) (decomposes)</li><li>Solubility(water): Insoluble</li><li>Acidity (pKa): 3.3 (amide), 9.2 (secondary), 12.3 (primary)</li>';


Dict["blastn"] = 'BLASTN searches nucleotide databases with a nucleotide query and searches for both the sense and complement strands of the query sequence. BLASTN has different tasks for specific types of searches. blastn is the traditional BLASTN blastn-short is used for sequences shorter than 50 bases. megablast can be used to find simila sequences(e.g. intraspecies or closely related species) dc-megablast is used to find distant sequences. ';
Dict["blastp"] = 'BLASTP uses a protein database with a protein query. It is used to identify a query that consists of amino acid sequence and for finding similar sequences in the protein database.  ';
Dict["blastx"] = 'BLASTX takes a protein database and a nucleotide query, this is very usefull when trying to find homologous proteins to a nucleotide coding region. BLASTX will translate the nucleotide query in all six reading framses and will provide statistics for hits to the different frames.';
Dict["psiblast"] = 'Position-Specific Iterated (PSI)-BLAST  is the most sensetive BLAST program which makes it very useful for finding very distant related proteins. It is the best option to take when your PBLAST is not giving back significant hits. The program starts with a PBLAST and builds a position-specific scoring matrix(PSSM) from an alignment of the sequences with a  E value lower than the inclusion threshold. After the PSSM has been build the second iteration will start but this time the PSSM will be used as a query. New hits will be added to the PSSM if their E value is lower than the inclusion threshold.';
Dict["tblastn"] = 'TBLASTN has a translated database and uses a protein query. It compares a protein sequence to the six-frame translations of a nucleotide database. It is a good way for finding homologous protein coding regions in unannotated nucleotide sequences. This is especially useful in expressed sequence tags(ESTs). ESTs are short single read cDNA sequences which consist out of the largest pool of sequences data for many organisms and they contain pat of transcripts from uncharacterized genes.';
$(function() {
    $(document).delegate('.dialog', 'click', function() {
        var trid = $(this).closest('tr').attr('id');
        $('#dialog').html('<h4>'+trid+'</h4>'+Dict[trid]);
        $('#dialog').dialog({
            maxHeight: 550,
            width: 300}
        );
     });
     //http://stackoverflow.com/questions/8661501/datatables-i-cant-call-an-onclick-event-after-i-paginate
     //http://datatables.net/forums/discussion/19513/datatable-can-t-select-rows-on-next-page
});

$(document).ready(function(){
   $('#highlight tr').mouseover(function(){
      $(this).addClass('hover');
   });
         
   $('#highlight tr').mouseout(function(){
      $(this).removeClass('hover');
   });
});
