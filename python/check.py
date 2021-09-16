import boto3
ec2_re = boto3.resource ('ec2')
ec2_cli = boto3.client ('ec2')
for each in ec2_cli.describe_volumes()['Volumes']:
    print(each['Attachments'])