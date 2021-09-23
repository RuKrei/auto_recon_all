FROM freesurfer/freesurfer:7.2.0

#install additional requirements
# unzip


# Set environment variables
-e LICENSE_FILE=path/to/license/file
-e INPUT_DIRECTORY=path/to/input/directory/on/host/machine
-e OUTPUT_DIRECTORY=path/to/output/directory/on/host/machine


# run Matlab runtime installer
CMD fs_install_mcr R2014b


#todo:
# docker run -v vs. configuration in here (is there even an option for configuring this from in here?
# otherwise change README to instruct how to map directories or write a utility script spinning up the container
# with mapping)
