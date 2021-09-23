FROM freesurfer/freesurfer:7.2.0
#FROM continuumio/miniconda3:4.10.3

# Set environment variables
ENV LICENSE_FILE=path/to/license/file
ENV INPUT_DIRECTORY=path/to/input/directory/on/host/machine
ENV OUTPUT_DIRECTORY=path/to/output/directory/on/host/machine

ADD ./app/do_fs_folder.sh /app/
ADD ./app/do_recon_all_nipype.py /app/

# run Matlab runtime installer requires unzip
RUN yum install unzip pip wget python3 -y
RUN pip3 install nipype dicom2nifti

RUN cd /app


#RUN sh /app/do_fs_folder.sh
#RUN python3 do_recon_all_nipype.py

#todo:
# docker run -v vs. configuration in here (is there even an option for configuring this from in here?
# otherwise change README to instruct how to map directories or write a utility script spinning up the container
# with mapping)
