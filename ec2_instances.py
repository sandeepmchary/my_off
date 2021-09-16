import boto3
ec2 = boto3.client('ec2',region_name="us-east-1")
response = ec2.describe_instances()
for each in response['Reservations']:
	for each_item in each['Instances']:
		print(each_item['ImageId'],each_item['InstanceId'])
    
