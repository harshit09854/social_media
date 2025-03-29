docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID harshit356/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID harshit356/$JOB_NAME:latest

docker push harshit356/$JOB_NAME:$BUILD_ID

docker push harshit356/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID harshit356/$JOB_NAME:$BUILD_ID harshit356/$JOB_NAME:latest
