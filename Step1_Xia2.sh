# Xia2 is the 1st module in the processing pipeline, to 1) index & convert the original data into files to feed in following modules 
# and 2) provide statistic measures & analysis to the original data 

source /opt/phenix-1.12-2829/phenix_env.sh   #change accordingly if using HPC or other Linux nodes because the version may be different
source /opt/ccp4/ccp4-7.0/bin/ccp4.setup-sh

working="/mnt/auto/fischergrp/common/Xray_Data/2020/feb06_SERCAT_ID/Shanshan/013I_002-04/xia2Process/"

cd $working

xia2 pipeline=dials \
image=/mnt/auto/data_directory/MF-002_Pn4_000001.cbf.gz:1:720 \
xia2.settings.space_group=P41212 \
xia2.settings.resolution.d_min=2.59 \	#resolution cutoff
cc_half=0.5 \
xia2.settings.input.anomalous=On \
xia2.settings.project='AllFrame' \
xia2.settings.crystal='IADP013_002-04' \
dials.find_spots.filter_ice_rings=false \
#xia2.settings.resolution.d_max=40.0 \  #optional command to set lowest resolution
#freer_file				#optional command to set up indexing reference and copy the spacegroup assignment



for i in K16 K11    # example for FOR loop run Xia2 locally 
do 
	cd "/mnt/auto/data_directory/$i"
	pwd
	
	# need a backslash "\" to set an exception for the _imagenumber.cbf.gz filename after using $i as the variable
	xia2 image=/data_directory/$i/$i\_000002.cbf.gz:1:580 xia2.settings.space_group=p43212 \
	freer_file /research/home/data_directory/4jux_phases.mtz \
	cc_half=0.62 \
	xia2.settings.resolution.d_min=1.1 \
	cd ..
	
done
