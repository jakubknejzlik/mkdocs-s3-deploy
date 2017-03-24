cd /docs/site

mkdocs build

aws s3 sync . s3://$BUCKET_NAME
