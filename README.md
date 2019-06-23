# CaloGAN-docker

Build and push image :

$ `docker build -t engineren/calogan-docker .`

$ `docker image push engineren/calogan-docker`


Running in my local : 

$ `docker run -it --rm -v $PWD/CaloGAN/data:/home/CaloGAN/data calogan-docker python -m models.train models/particles.yaml`


Running naf-ilc-gpu :

$ `singularity exec --bind data:/home/CaloGAN/data --nv docker://engineren/calogan-docker:latest python -m models.train models/particles.yaml`

