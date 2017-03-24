mkdocs build

cd site

aws s3 sync . s3://$BUCKET_NAME
