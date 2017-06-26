echo "Building\n"
mkdocs build -d /docs/site

echo "Uploading files to s3\n"
aws s3 sync /docs/site s3://$BUCKET_NAME
