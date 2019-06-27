FROM tensorflow/tensorflow:latest-gpu

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

WORKDIR /home/CaloGAN


