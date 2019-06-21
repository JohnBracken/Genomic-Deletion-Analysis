/*Replace missing values with a blank*/
OPTIONS MISSING='';

/*Read in the cleaned csv file of genomic deletion data.*/
PROC IMPORT DATAFILE= '/folders/myfolders/SASData/GRCh37_nr_deletions.csv'
OUT=WORK.DELETIONS
DBMS=CSV;
GETNAMES=YES
;
RUN;

/*Add a column to the table which shows the length of each deletion */
DATA WORK.DELETIONS;
SET WORK.DELETIONS;
Length_Deletion = Outermost_stop - Outermost_start + 1;
RUN;

/*Create a table of counts for the 50 most frequent gene deletion length values*/	
PROC FREQ DATA=WORK.DELETIONS ORDER = FREQ;
TABLES Length_Deletion/ MAXLEVELS = 50;
RUN; 

/*Show histogram of genome deletion lengths  Show only the small deletions,
since they seem the most frequent.  Show only the histogram, without the stats
for now.  */
ODS SELECT HISTOGRAM;
PROC UNIVARIATE DATA=WORK.DELETIONS;
   WHERE Length_Deletion between 2 and 20;
   VAR Length_Deletion;
   HISTOGRAM Length_Deletion / MIDPOINTS = 2 to 20 by 1 VSCALE = COUNT;
   TITLE 'Genome Deletion Length Histogram';
   LABEL Length_Deletion='Genome Deletion Length (in base pairs)'; 
RUN;

/*Redo the univariate analysis with all the data, but don't show the histogram.*/
PROC UNIVARIATE DATA=WORK.DELETIONS;
   VAR Length_Deletion;
RUN;
