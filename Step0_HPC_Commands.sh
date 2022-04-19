ssh hpc     # remote login
bjobs       # to check on jobs
bkill 97768087    # to delete a job from queue use job ID

# commands to submit jobs running Xia2
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Jamie012-09_Xia2 "/research/home/data_directory/xia2_Jamie_012-09_cmd_P3121.sh"
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Ruxo006-01_Xia2 "/research/home/data_directory/xia2_Ruxo_006-01_P3121.sh"
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Baricit_002-01_Xia2 "/research/home/data_directory/xia2_Baricit_002-01_cmd_P3121.sh"

# commands to submit jobs running Phenix
bsub -R "rusage[mem=8000]" -n 5 -R "span[hosts=1]" -P Baricit_002-01_MR "/research/home/data_directory/phenixphaser-MR-Ense.sh"
bsub -R "rusage[mem=16000]" -n 5 -R "span[hosts=1]" -P phenix_MR_loop "/research/home/data_directory/phenixphaser-loop-MR-Ense.sh"

# commands to submit jobs running Phaser
bsub -R "rusage[mem=20000]" -n 1 -R "span[hosts=1]" -P Ruxo_006-01_MR "/research/home/data_directory/hpc_phenixphaser_Ruxo006-01_Ense.sh"
bsub -R "rusage[mem=16000]" -n 5 -R "span[hosts=1]" -P phenix_MR_loop "/research/home/data_directory/phenixphaser-loop-MR-Ense.sh"
