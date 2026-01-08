import boto3
import yaml

with open("../config/aws_config.yaml") as f:
    config = yaml.safe_load(f)

rds = boto3.client("rds", region_name=config["region"])

def start_rds_instances():
    dbs = rds.describe_db_instances()["DBInstances"]

    for db in dbs:
        arn = db["DBInstanceArn"]
        tags = rds.list_tags_for_resource(ResourceName=arn)["TagList"]

        tag_match = any(
            tag["Key"] == config["rds_tag_key"]
            and tag["Value"].lower() == "true"
            for tag in tags
        )

        if tag_match and db["DBInstanceStatus"] == "stopped":
            rds.start_db_instance(DBInstanceIdentifier=db["DBInstanceIdentifier"])
            print(f"RDS started: {db['DBInstanceIdentifier']}")

if __name__ == "__main__":
    start_rds_instances()
