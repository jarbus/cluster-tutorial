Check [https://www.cs.brandeis.edu/~guru/gpu-cluster/usage/](https://www.cs.brandeis.edu/~guru/gpu-cluster/usage/) for more information. ChatGPT also knows about slurm commands.

DO NOT RUN PYTHON ON THE LOGIN NODE
DO NOT RUN PYTHON ON THE LOGIN NODE
DO NOT RUN PYTHON ON THE LOGIN NODE

- The login node is a tiny, weak computer that we connect to in order to submit jobs to the bigger, stronger computers
- To check if you are on the login node, run `hostname`. If it outputs `student-gpu-cluster`, you are on the login node.
- All compute jobs should be run with `sbatch` from the login node

DO NOT RUN PYTHON SCRIPTS ON THE LOGIN NODE 
DO NOT RUN PYTHON SCRIPTS ON THE LOGIN NODE 
DO NOT RUN PYTHON SCRIPTS ON THE LOGIN NODE 

connect: `ssh username@sgc.cs.brandeis.edu`

# Workflow

1. write code on your local machine, push to git, clone repo on cluster using `git clone`
2. make a batch file, e.g. `nano batch.sh`
3. run the batch file, e.g. `sbatch batch.sh`
- You can monitor your job with the command `squeue JOB_ID`
- You can cancel your job with the command `scancel JOB_ID`

Your job does not print anything to your screen. All output and errors are written to files that are generated in the directory you run your command, unless otherwise specified.
