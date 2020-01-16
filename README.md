# CaloGAN-docker

Build and push image :

$ `docker build -t engineren/calogan-docker .`

$ `docker image push engineren/calogan-docker`


Running in my local : 

$ `docker run -it --rm -v $PWD/CaloGAN:/home/CaloGAN engineren/calogan-docker python -m models.train models/particles.yaml`


Running naf-ilc-gpu :

$ `singularity pull docker://engineren/calogan-docker:latest`

$ `singularity instance start --bind data:/home/CaloGAN/data --nv calogan-docker_latest.sif caloGAN`

$ `singularity run instance://caloGAN python -m models.train models/particles.yaml`


