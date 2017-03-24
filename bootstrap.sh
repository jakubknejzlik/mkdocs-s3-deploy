mkdocs build

cd /docs/site

aws s3 sync /docs/site s3://$BUCKET_NAME
