# Description

This is a docker image including a recipy to spin up a container 
automatically running freesurfer 7.2.0
 - recon-all
 - Hippocampal subfield segmentation
on all files in an input folder.

Output ($SUBJECTS_DIR) is directed to a folder on the host machine.
 
 
# Requirements:

## You need to have a working docker environment
 - Instructions for Mac, Linux and Windows can be found here: https://docs.docker.com/desktop/
 - Docker will take care of the environment. It will also download matlab runtime (might take some time initially - please be patient). Matlab runtime is necessary for  the hippocampal subfield segmentation.
## You need to have a valid freesurfer license file and copy it to the app/ directory.
 - This can be obtained from here: https://surfer.nmr.mgh.harvard.edu/fswiki/License

# Usage:

## Modify 2 things in the Dockerfile:
 - INPUT_DIRECTORY=path/to/input/directory/on/host/machine
 - OUTPUT_DIRECTORY=path/to/output/directory/on/host/machine
 
 
## Copy input files to input folder on host machine
 - Input is expected to be a (3 tesla) T1 MRI sequence
 - Subfolder name becomes the subject name, so
 - - inputfolder/foobar/foo.nii results in subjectname foobar
 - the pipeline expects one of two input formats:
 - - a .nii file in inputfolder/foobar/
 - - dicom files via inputfolder/1000*/10000*/10000*/some_dicom_files

 
# Output
All output is standard freesurfer output written to OUTPUT_DIRECTORY
 - output of 
 - - recon-all (with flags -3T -all)
 - - segmentHA_t1.sh
