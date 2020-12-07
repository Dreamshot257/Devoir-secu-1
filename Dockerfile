FROM centos:latest

# -- Install all needed packages during build--
RUN yum update -y && yum install -y python3-pip && \
    pip3 install safety && \
    pip3 install insecure-package && \
    yum install -y git

# -- install experimentation package --
CMD git clone https://github.com/akoumjian/python-safety-vuln.git && \
    cd python-safety-vuln

# -- launch experimentation --
CMD echo -e "\n\n\nSafety check sans appliquer la faille\n" && \
    safety check
  
