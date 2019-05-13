# ulta-gcp-image-hardening
# GCP Image Management and Hardening through CICD Pipeline


Building a Google Compute Engine Image/Custom Image with Packer 
<br>
CICD Build using Jenkins <br>
Google Cloud Platform - for image build, cloud storage, docker image build...! <br>

# Automated Image Creation Usage using Jenkins:

Manually create GCE VM image using packer:

$ packer build -var 'project=test-image-hardening' -var 'image_family=ulta-quazi-ubuntu-1604-base-image' packer.json

![alt text](https://github.com/sahanasj/ulta-gcp-image-hardening/blob/master/screenshots/packer-base-file.PNG)

![alt text](https://github.com/sahanasj/ulta-gcp-image-hardening/blob/master/screenshots/GCP-images-list-1.PNG)

$ packer build -var 'project=test-image-hardening' -var 'source_image_family=ubuntu-1604-lts' -var 'image_family=ulta-quazi-ubuntu-1604-base-image' -var "build_number=test1" -var "job_name=testjob1" packer.json


# Multi Team Automated Image Creation Usage:

# For Quazi Team:
$ packer build -var 'project=test-image-hardening' -var 'source_image_family=ubuntu-1604-lts' -var 'image_family=ulta-quazi-ubuntu-1604-base-image' -var "build_number=test1" -var "job_name=testjob1" -var "team_name=quazi" packer.json

# For CCP Team:
$ packer build -var 'project=test-image-hardening' -var 'source_image_family=ubuntu-1604-lts' -var 'image_family=ulta-ccp-ubuntu-1604-base-image' -var "build_number=test1" -var "job_name=testjob1" -var "team_name=ccp" packer.json

