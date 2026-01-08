import boto3
from datetime import datetime, timedelta, timezone

ec2 = boto3.client("ec2")
RETENTION_DAYS = 30

def cleanup_old_snapshots():
    snapshots = ec2.describe_snapshots(OwnerIds=["self"])["Snapshots"]
    cutoff_date = datetime.now(timezone.utc) - timedelta(days=RETENTION_DAYS)

    for snap in snapshots:
        if snap["StartTime"] < cutoff_date:
            ec2.delete_snapshot(SnapshotId=snap["SnapshotId"])
            print(f"Deleted snapshot: {snap['SnapshotId']}")

if __name__ == "__main__":
    cleanup_old_snapshots()
