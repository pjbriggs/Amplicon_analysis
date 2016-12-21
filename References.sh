#!/bin/bash

#GreenGenes 13_8
if [[ -s gg_13_8_otus ]];
then
	echo "gg_13_8_otus folder not empty"
else

	cd gg_13_8_otus

	wget ftp://greengenes.microbio.me/greengenes_release/gg_13_5/gg_13_8_otus.tar.gz

	tar -zxvf gg_13_8_otus.tar.gz
	rm gg_13_8_otus.tar.gz
	mv gg_13_8_otus/* .
	rm -r gg_13_8_otus

	cd ..
fi

#Silva 

if [[ -s Silva ]];
then
	echo "Silva folder not empty"
else
	cd Silva

	wget https://www.arb-silva.de/fileadmin/silva_databases/qiime/Silva_119_release.zip
	unzip Silva_119_release.zip
	rm Silva_119_release.zip
	rm -r __MACOSX

	wget https://www.arb-silva.de/fileadmin/silva_databases/qiime/Silva_119_release_aligned_rep_files.tar.gz
	tar -zxvf Silva_119_release_aligned_rep_files.tar.gz
	rm Silva_119_release_aligned_rep_files.tar.gz
	cd ..
fi


#RDPClassifier
if [[ -s RDPClassifier_16S_trainsetNo14_rawtrainingdata ]];
then
	echo "RDPClassifier_16S_trainsetNo14_rawtrainingdata folder not empty"

else
	cd RDPClassifier_16S_trainsetNo14_rawtrainingdata

	wget http://sourceforge.net/projects/rdp-classifier/files/RDP_Classifier_TrainingData/RDPClassifier_16S_trainsetNo14_rawtrainingdata.zip

	unzip RDPClassifier_16S_trainsetNo14_rawtrainingdata.zip
	rm RDPClassifier_16S_trainsetNo14_rawtrainingdata.zip
	mv RDPClassifier_16S_trainsetNo14_rawtrainingdata/* . 
	rm -r RDPClassifier_16S_trainsetNo14_rawtrainingdata

	cd ..
fi