NAME = benbaker76/pytorch-mnist
VERSION = 0.1

all: build

build:
	@docker build -t $(NAME):$(VERSION) .

run: 
	@docker run -it --gpus all $(NAME):$(VERSION) /bin/bash

tag: 
	@docker tag $(NAME):$(VERSION) $(NAME):latest
    
push: 
	@docker push $(NAME)
	
rmi: 
	@docker rmi $(NAME):$(VERSION) $(NAME):latest
