ssh hpc     # remote login
bjobs       # to check on jobs
bkill 97768087    # to delete a job from queue use job ID

# commands to submit jobs running Xia2
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Jamie012-09_Xia2 "/research/home/data_directory/xia2_Jamie_012-09_cmd_P3121.sh"
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Ruxo006-01_Xia2 "/research/home/data_directory/xia2_Ruxo_006-01_P3121.sh"
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Baricit_002-01_Xia2 "/research/home/data_directory/xia2_Baricit_002-01_cmd_P3121.sh"
