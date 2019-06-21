The following code performs an analysis of genomic data, taken from the 
National Center for Biotechnology Information website (https://www.ncbi.nlm.nih.gov/).
The dataset used in this analysis is a very long list of what are called gene deletions.
The dataset was so huge that it maxed out the available rows in my spreadsheet program,
thus it was limited to a little over a million rows.  A gene deletion is basically a section
of DNA that is lost or removed when DNA undergoes replication.  DNA is the molecule responsible for 
producing the building blocks of life (ie. proteins and other functional biological molecules).  
A gene is a section or portion of DNA that provides a code to create a functional biological 
molecule such as a protein.  DNA replication is the process where the DNA in a nucleus of a cell
replicates itself as part of cell division. Cell division is needed for living things to grow 
and to replace dead or dying cells with new cells. Sometimes, when DNA replicates itself, it doesn't 
do so perfectly and sections of DNA don't get copied and end up missing in the new copy of the DNA.
This is an example of a gene deletion. The data is a list of known, non-redundant gene deletions 
from the NCBI database, as part of the Genome Reference Consortium Human Build 37 (GRCh37).  
A chromosome is a chunk of DNA that contains genetic information.  Humans have 23 pairs of 
chromosomes.  The data is of human chromosomes. The dataset was so large that I was only able
to list the known gene deletions from the first 6 chromosomes and a little bit of chromosome 7.
DNA can be broken up into distinct units of nucleotide molecule pairs called "base pairs".
Base pairs can therefore be used as a quantitative unit of measurement to measure the length
of a portion or segment of DNA, such as a gene deletion.

In the dataset, each row contains the chromosome where a deletion is present, 
the starting base pair where the deletion starts, the ending base pair where the deletion ends,
and an ID for the deletion.  The length of a deletion is given by the ending base pair 
number minus the start base pair number plus one.

The SAS code here provides a summary of the gene deletion lengths in the data.  This includes a
table of the 50 most frequent deletion lengths and also a histogram of the shorter, 
more prevalent deletion lengths.  A univariate analysis was also done on the full data set, 
showing a massively right-skewed distribution of deletion lengths with tremendous amounts of data
in the tail (very high kurtosis).  Therefore, although a lot of gene deletions are short 
(ie. 2 to 20 base pairs in length), there are many other deletions spanning a huge range of lengths
(up to over 200 million base pairs for a single deletion!).
     
