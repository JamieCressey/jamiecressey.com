jekyll clean
jekyll build
S3_ID=$(grep -A2 default ~/.aws/credentials | grep aws_access_key_id| sed 's/aws_access_key_id = //g') S3_SECRET=$(grep -A2 default ~/.aws/credentials | grep aws_secret_access_key | sed 's/aws_secret_access_key = //g') bundle exec s3_website push
