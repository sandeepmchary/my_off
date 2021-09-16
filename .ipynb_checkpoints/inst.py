import boto3
from boto3 import session
ec2_cli = boto3.client('ec2')
regions_list = []
for each in ec2_cli.describe_regions()['Regions']:
    regions_list.append(each['RegionName'])
#print(regions_list)
for each_region in regions_list:
    session = boto3.Session(region_name=each_region)
    resource = session.resource(service_name='ec2')
    print("List of Ec2 instances from the region: ",each_region)
    for each_in in resource.instances.all():
        print(each_in.id,each_in.state['Name']) 