docker run -d --name postgres \
    --env POSTGRES_PASSWORD="pgpassword" \
    --env POSTGRES_USER="orthanc" \
    --env POSTGRES_DB="82LvCwe6DJ7xXZXZ" \
    --publish 5432:5432 \
    --volume $(pwd)/postgres:/var/lib/postgresql/data \
    --network local-custom \
    postgres:14.1
