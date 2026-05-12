PLAINTEXT_KEY=$(jq -r .Plaintext data-key.json | base64 --decode)
ENCRYPTED_KEY=$(jq -r .CiphertextBlob data-key.json)
