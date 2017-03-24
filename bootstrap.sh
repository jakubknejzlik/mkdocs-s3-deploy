cd /docs/site

mkdocs build

aws s3 sync /docs/site s3://$BUCKET_NAME
