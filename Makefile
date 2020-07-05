
.PHONY: 

build-actions:
	cd images && make -C github-runner ci-release

reload:
	kubectl delete -f k8s/runner/runner.yaml
	kubectl apply -f k8s/runner/runner.yaml
