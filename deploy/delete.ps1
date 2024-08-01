kubectl delete deployment/nginx-deployment -n quizstar
kubectl delete service/nginx-service -n quizstar

# kubectl delete deployment/beat-deployment -n quizstar
# kubectl delete deployment/worker-deployment -n quizstar

# kubectl delete deployment/redis-deployment -n quizstar
# kubectl delete service/redis-service -n quizstar

kubectl delete deployment/django-app-deployment -n quizstar
kubectl delete service/django-app-service -n quizstar
kubectl delete pvc django-app-pvc -n quizstar
kubectl delete pv django-app-pv -n quizstar

kubectl delete deployment/mysql-deployment -n quizstar
kubectl delete service/mysql-service -n quizstar
kubectl delete pvc mysql-pvc -n quizstar
kubectl delete pv mysql-pv -n quizstar

kubectl delete configmap app-configmap -n quizstar
kubectl delete secret app-secret -n quizstar
kubectl delete secret docker-secret -n quizstar

kubectl get all -n quizstar
kubectl get pvc -n quizstar
kubectl get pv -n quizstar
kubectl get secrets -n quizstar