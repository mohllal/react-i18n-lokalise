set -ex

curl -sfL https://raw.githubusercontent.com/lokalise/lokalise-cli-2-go/master/install.sh | sh

./bin/lokalise2 \
    --token=$LOKALISE_TOKEN \
    --project-id=$LOKALISE_PROJECT_ID:$BRANCH_NAME \
    file download \
    --format json \
    --unzip-to=$TRANSLATION_FILE