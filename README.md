# Automation_Project


aws ec2 describe-instances --query "Reservations[*].Instances[*].PrivateIpAddress" --output text
