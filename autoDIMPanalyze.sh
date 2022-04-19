#!/bin/bash

for PDB in `cat Jak2-PDBs.list`
do 
	echo $PDB
	grep "MTZ " DIMP_$PDB/screen.log
	grep ".pdb"  DIMP_$PDB/screen.log
	grep " 1 rwcontents" DIMP_$PDB/screen.log
	grep "refmac5 restr" DIMP_$PDB/screen.log
	echo "-------------"
done
