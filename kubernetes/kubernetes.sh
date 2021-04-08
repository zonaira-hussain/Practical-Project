echo 'creating namespace'
kubectl apply -f project-namespace.yml

echo 'creating services'
kubectl create -f frontend_service.yml 
kubectl create -f backend_service.yml
kubectl create -f nginx_load_balancer.yml

echo 'creating nginx config'
kubectl apply -f config_map.yml

echo 'creating deployment files'
kubectl apply -f deploy_nginx.yml
kubectl apply -f deploy_frontend.yml
kubectl apply -f deploy_backend.yml

