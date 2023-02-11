run: 
		kubectl apply -f ./back/back-deployment.yaml
		kubectl apply -f ./back/back-service.yaml
		kubectl apply -f ./data/data-deployment.yaml
		kubectl apply -f ./data/data-service.yaml
		kubectl apply -f ./data/pvc.yaml
		kubectl apply -f ./data/sc.yaml
		kubectl apply -f ./front/front-deployment.yaml
		kubectl apply -f ./front/front-service.yaml

fill-db:
		kubectl apply -f ./data-script/data-script-deployment.yaml

stop: 
		kubectl delete -f ./back/back-deployment.yaml
		kubectl delete -f ./back/back-service.yaml
		kubectl delete -f ./data/data-deployment.yaml
		kubectl delete -f ./data/data-service.yaml
		kubectl delete -f ./front/front-deployment.yaml
		kubectl delete -f ./front/front-service.yaml

clean: 
	kubectl delete -f ./data/pvc.yaml

	