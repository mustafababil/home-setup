#
# This script will kick off the CSV importer as a web server, using Docker run.
# It will launch a web server on port 8081 that you can approach and use to import data.
#

#
# Create a personal access token in your Firefly III installation, under 'Profile'
#
PERSONAL_ACCESS_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI3MiIsImp0aSI6IjlkNjEyZDAxNDJlMDBjNTExNTZkOTNjZjllYTFlMzliOWRiZjUyMTI0MmU1ODA1MTU2NDIxYjBjYzdiYTRlZjNmZGRlZGViMWQ0MmQwYzNhIiwiaWF0IjoxNjAzOTE5MzUwLCJuYmYiOjE2MDM5MTkzNTAsImV4cCI6MTYzNTQ1MTc0OSwic3ViIjoiNCIsInNjb3BlcyI6W119.IVnm2li1PD-ZInkv53ePx8qJYpp-quLPfoqojowvtLFN25OuTtooyDjVVy9Pv6ayoUQdcsBEYqRqx-_OJ18okEaGz2Mt5CdJnkL1uAlIZFX-yW-9Lsw6K37riQtQYcZn8T0CAtEmFcmub2UyMexff91PSTuRQGryYTturQMXR2wXkEpolAd-ihQgA4ONc3cMAAba4REwPQI_XDJxXiw0zctNzJw69R6NmlbFaAqvhQrsLHfckw4kWGk1SG405pAnVlRwRhMGYjv7eyDMPjDzNpRcwZC8FOx8KzUPLG7fcR-d3zO8pvhIN769csrEipKgNKvS84bmy1VAIePkRbPhbMU7UGUZ_Ow72fhlNqw7BMo0TAzDOrDU21KKUtdM1-TjhqcOjyk4FeVUZtDH4tYGdF46jJM1vUMY2hHaaVqV6BV5q8oM4ZWkR8O7iWNb6JnaRg-U-gVTDudcUh65nCE2kl-48xu8khM8RWN0vivSc_f15X6ioNDTCPVQ2OtBL4CpPRLnvaU7eD8ox8Qs-o5GYrGYBD4yeBI41KcIYo2Pgo-Aavk8z0PO3JGGxP8-UUGPQRkxwd1SCtwnapKjeqPYTHasbp6hm9UVXOOsURrMLyfwUsFvq6wgCS-4qEeoV-MBI0lioSfoo16kwm0dPkj7FsftOF5dCJeh-DxrsV0LxaQ

#
# This is the full path to your Firefly III installation.
# Remove any trailing slashes, please!
#
# FIREFLY_III_URI=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' fireflyiii_firefly_iii_app_1)
# FIREFLY_III_URI=http://localhost:8080
FIREFLY_III_URI=http://fireflyiii:8080 # IP address is passed by docker-compose
echo "Connecting to Firefly III at $FIREFLY_III_URI"

#
# There is no need to touch anything after this point, but if you're smart you're free to do so.
#

docker run \
--rm \
--network=fireflyiii_firefly_iii_net \
-e FIREFLY_III_ACCESS_TOKEN=$PERSONAL_ACCESS_TOKEN \
-e FIREFLY_III_URI=$FIREFLY_III_URI \
-p 8081:8080 \
fireflyiii/csv-importer:latest
