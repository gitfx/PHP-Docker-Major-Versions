# GET /README.md

echo "# PHP Docker image major versions"

wget -q https://registry.hub.docker.com/v1/repositories/php/tags -O - | jq ".[].name" | perl -nle 'print "* $1" if /^"(\d+\.[\d+\.?]+)"/'
