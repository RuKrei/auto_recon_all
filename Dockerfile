FROM freesurfer/freesurfer:7.2.0

# Set environment variable for persistent freesurfer output
ENV SUBJECTS_DIR=/app/output/

# Copy files
ADD ./app/license.txt /usr/local/freesurfer/
ADD ./app/do_recon_all_nipype.py /app/
ADD ./app/input /app
ADD ./app/output /app

# run Matlab runtime installer requires unzip
RUN yum install unzip pip wget python3 -y
RUN pip3 install nipype dicom2nifti
RUN fs_install_mcr R2014b

# Change working directory to /app
WORKDIR /app

