import boto3

ec2 = boto3.client("ec2")

def lambda_handler(event, context):
    response = ec2.describe_instances(
        Filters=[
            {"Name": "tag:AutoSchedule", "Values": ["true"]},
            {"Name": "instance-state-name", "Values": ["running"]}
        ]
    )

    instance_ids = [
        i["InstanceId"]
        for r in response["Reservations"]
        for i in r["Instances"]
    ]

    if instance_ids:
        ec2.stop_instances(InstanceIds=instance_ids)

    return {
        "status": "success",
        "stopped_instances": instance_ids
    }
