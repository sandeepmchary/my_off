import boto3
ec2_cli = boto3.client('ec2')
all_regions = []
for each_reg in ec2_cli.describe_regions()['Regions']:
    all_regions.append(each_reg['RegionName'])
for each_vol_reg in all_regions:
    ec2_clie = boto3.client('ec2',region_name=each_vol_reg)
    print(ec2_clie.describe_volumes)