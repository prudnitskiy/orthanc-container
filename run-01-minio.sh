docker run -d --name minio \
    --env MINIO_ACCESS_KEY="AACCESS" \
    --env MINIO_SECRET_KEY="slDrp9iAQW9BqKTqktLAVXYLDoTnyZ6P" \
    --env MINIO_REGION="eu-west-1" \
    --publish 9000:9000 \
    --publish 9001:9001 \
    --volume $(pwd)/minio:/data \
    --network local-custom \
    bitnami/minio:2021
