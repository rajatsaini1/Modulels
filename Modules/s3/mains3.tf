resource "aws_s3_bucket" "prod_website" {  
    acl    = "public-read"     
    website {    
    index_document = "index.html"    
    error_document = "error.html"   
 
  }
}

resource "aws_s3_bucket_object" "index" {

  bucket = aws_s3_bucket.prod_website.id

  key    = "index.html"
  source = "index.html"
  content_type = "text/html"

} 



resource "aws_s3_bucket_policy" "prod_website" {  
  bucket = aws_s3_bucket.prod_website.id   
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.prod_website.id}/*"
        }
    ]
}
POLICY
}
