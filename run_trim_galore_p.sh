#!/bin/sh
mkdir trim_galore
cd trim_galore
# assumed fastq file in another directory, called 'fq'
for fq in ../fq/*.fastq; 
	do g="${fq%_1.fastq}"
	echo $g
	time trim_galore --fastqc --trim1 --paired ../fq/${g}_1.fastq ../fq/${g}_2.fastq
done
