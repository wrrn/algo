.PHONY: algo
algo:
	docker build -t algo .
	docker run -ti --rm --name algo -v $$(pwd)/configs:/algo-master/configs algo

.PHONY: clean
clean:
	rm -rf configs
