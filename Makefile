.PHONY: generate-api-client
openapi.json:
	curl http://localhost:8000/main_server/api/v1/openapi.json > openapi.json

generate: openapi.json
	rm -rf src/resources/npm/api-client
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli generate \
	    -i openapi.json \
	    -g php \
	    -p artifactVersion=1.0.4 \
	    --git-repo-id=bmlt-root-server-php-client \
	    --git-user-id=bmlt-enabled \
	    -o .

template:
	mkdir templates
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli author template \
	    -g php \
	    -o ./templates

clean:
	rm -f openapi.json
