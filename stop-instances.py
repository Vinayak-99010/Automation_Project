import boto3

ec2 = boto3.client('ec2', region_name='ap-south-1')

def stop_idle_instances():
    filters = [{'Name': 'tag:Environment', 'Values': ['dev']}]
    instances = ec2.describe_instances(Filters=filters)

    ids = [i['InstanceId'] for r in instances['Reservations'] for i in r['Instances']]
    if ids:
        ec2.stop_instances(InstanceIds=ids)
        print(f"Stopped instances: {ids}")

stop_idle_instances()
