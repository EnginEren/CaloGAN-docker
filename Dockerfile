FROM tensorflow/tensorflow:latest

#Install dependencies

RUN pip install --upgrade pip
RUN pip install pandas 
RUN pip install matplotlib
RUN pip install numpy scipy scikit-learn
RUN pip install pyyaml
RUN pip install keras

RUN apt-get update 
RUN apt-get upgrade -y 
RUN apt-get install -y git
RUN apt-get install -y vim

## Check out the code 
RUN cd /home && git clone https://github.com/EnginEren/CaloGAN.git 

WORKDIR /home/CaloGAN


