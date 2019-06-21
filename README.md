# CaloGAN-docker

Build and push image :

$ `docker build -t engineren/calogan-docker .`

$ `docker image push engineren/calogan-docker`


Running in my local : 

$ `docker run -it --rm -v $PWD/CaloGAN/data:/home/CaloGAN/data calogan-docker python -m models.train models/particles.yaml`


Running naf-ilc-gpu :

$ `singularity shell -B data:/home/CaloGAN/data docker://engineren/calogan-docker:latest`
