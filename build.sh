
#!/bin/sh

# Convert JOB_NAME to lowercase
JOB_NAME_LOWER=$(echo "$JOB_NAME" | tr '[:upper:]' '[:lower:]')

# Build Docker image with lowercase name
docker build -t $JOB_NAME_LOWER:$BUILD_ID .

# Tagging with lowercase repository name
docker tag $JOB_NAME_LOWER:$BUILD_ID harshit356/$JOB_NAME_LOWER:$BUILD_ID
docker tag $JOB_NAME_LOWER:$BUILD_ID harshit356/$JOB_NAME_LOWER:latest

# Push to Docker Hub
docker push harshit356/$JOB_NAME_LOWER:$BUILD_ID
docker push harshit356/$JOB_NAME_LOWER:latest

# Clean up local images
docker rmi -f $JOB_NAME_LOWER:$BUILD_ID harshit356/$JOB_NAME_LOWER:$BUILD_ID harshit356/$JOB_NAME_LOWER:latest
