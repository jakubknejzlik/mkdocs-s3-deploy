# mkdocs-s3-deploy

Docker image for easy building&deploying mkdocs generated documentation to S3.

# Usage

### CLI

Go to you projects root (where the mkdocs.yml is placed) and run:

```
docker run -it --rm -v `pwd`:/docs -e AWS_ACCESS_KEY_ID=... -e AWS_SECRET_ACCESS_KEY=... -e BUCKET_NAME=... jakubknejzlik/mkdocs-s3-deploy
```

### Bitbucket pipelines

Setup environment variables to your team/project and paste this in you `bitbucket-pipelines.yml`:
```
image: jakubknejzlik/mkdocs-s3-deploy
pipelines:
 branches:
   master:
     - step:
         script:
           - sh /bootstrap.sh

```
