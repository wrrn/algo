PRIVATE_KEY:=~/Downloads/algo.json
.PHONY: algo
algo:
	docker build -t algo .
	docker run -ti --rm --name algo -v $(PRIVATE_KEY):/tmp/algo.json -v $$(pwd)/configs:/algo-master/configs algo

.PHONY: clean
clean:
	rm -rf configs
