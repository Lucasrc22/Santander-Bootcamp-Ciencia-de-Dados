import boto3
import yaml

with open("../config/aws_config.yaml") as f:
    config = yaml.safe_load(f)

ec2 = boto3.client("ec2", region_name=config["region"])

def start_ec2_instances():
    response = ec2.describe_instances(
        Filters=[
            {
                "Name": f"tag:{config['ec2_tag_key']}",
                "Values": [str(config["ec2_tag_value"]).lower()]
            },
            {
                "Name": "instance-state-name",
                "Values": ["stopped"]
            }
        ]
    )

    instance_ids = [
        instance["InstanceId"]
        for reservation in response["Reservations"]
        for instance in reservation["Instances"]
    ]

    if instance_ids:
        ec2.start_instances(InstanceIds=instance_ids)
        print(f"EC2 started: {instance_ids}")
    else:
        print("No EC2 instances to start.")

if __name__ == "__main__":
    start_ec2_instances()
