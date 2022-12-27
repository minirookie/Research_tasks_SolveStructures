#Fetch available online data (models) with Phenix
for PDB in `cat PDBs.list`
do 
	phenix.fetch_pdb $PDB
done


#Run Dimple pipeline
for PDB in `cat PDBs.list`
do 
	dimple $PDB.pdb /mnt/auto/home/data_directory/Bari_Jak2.mtz DIMP_$PDB
done


#Run Dimple analysis
for PDB in `cat PDBs.list`
do 
	echo $PDB
	grep "MTZ " DIMP_$PDB/screen.log
	grep ".pdb"  DIMP_$PDB/screen.log
	grep " 1 rwcontents" DIMP_$PDB/screen.log
	grep "refmac5 restr" DIMP_$PDB/screen.log
	echo "----"
done

