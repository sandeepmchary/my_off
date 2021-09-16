import boto3
ec2_cli=boto3.client('ec2')
for each in ec2_cli.instance.all():
    print(each)