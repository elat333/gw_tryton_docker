#!/bin/sh
set -e

cd "$(dirname "$0")"
proj="demo"

docker-compose -p ${proj} down
docker-compose -p ${proj} pull --quiet

for directory in databases/?.?; do
    series=$(basename ${directory})
    docker-compose -p ${proj} up -d postgres-${series}
    until docker-compose -p ${proj} exec -T --user postgres postgres-${series} pg_isready; do
        sleep 1
    done
    docker-compose -p ${proj} exec -T --user postgres postgres-${series} dropdb --if-exists demo${series}
    docker-compose -p ${proj} exec -T --user postgres postgres-${series} createdb demo${series}
    docker-compose -p ${proj} exec -T --user postgres postgres-${series} psql -q demo${series} < ${directory}/database.dump >/dev/null
done

docker-compose -p ${proj} up -d
