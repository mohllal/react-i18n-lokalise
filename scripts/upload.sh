set -ex

curl -sfL https://raw.githubusercontent.com/lokalise/lokalise-cli-2-go/master/install.sh | sh

# create branch
./bin/lokalise2 \
    branch create \
    --name=$BRANCH_NAME \
    --token=$LOKALISE_TOKEN \
    --project-id=$LOKALISE_PROJECT_ID \
    || true

./bin/lokalise2 \
    file upload \
    --file=$TRANSLATION_FILE \
    --lang-iso=$LANGUAGE_ISO \
    --token=$LOKALISE_TOKEN \
    --project-id=$LOKALISE_PROJECT_ID:$BRANCH_NAME