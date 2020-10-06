import boto3
sqs = boto3.client('sqs')

def sqsget_queue_url() :

    sqsurl = sqs.get_queue_url(
        QueueName='SQS_NAME',
        QueueOwnerAWSAccountId='1464-3345-5919'
    )

    return sqsurl

def getApproximateNumberOfMessages() :
    
    
    ApproximateNumberOfMessages = sqs.get_queue_attributes(
    QueueUrl=sqsget_queue_url(),
    AttributeNames=[
        'ApproximateNumberOfMessages'
        
    ]
    )
    return ApproximateNumberOfMessages

def main():

    getApproximateNumberOfMessages()

if __name__=="__main__":
    main()