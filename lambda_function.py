import json
import urllib.parse
import boto3

def lambda_handler(event, context):
    print('Loading function')
    s3 = boto3.client('s3')

    #For to handle multiple upload
    for record in event['Records']:
        bucket = record['s3']['bucket']['name']
        key = record['s3']['object']['key']
        response = s3.delete_object(Bucket=bucket, Key=key)
        print(response)
