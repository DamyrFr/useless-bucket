{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "logs:CreateLogGroup",
            "Resource": "arn:aws:logs:*:${accountid}:*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:*:${accountid}:log-group:/aws/lambda/${lambdaname}:*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
         				"s3:DeleteObject",
								"s3:PutObject"
            ],
            "Resource": "arn:aws:s3:::${bucketname}/*"
        }
    ]
}
