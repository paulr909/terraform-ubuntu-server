# Deployment Process

Create Key-Pair and update the "key_name" value in ec2.tf

Run Terraform:
```shell
terraform init

terraform apply --auto-approve
```

Log into ubuntu server.
```shell
ssh -i "~/.ssh/your-project-server-kp.pem" ubuntu@<update-path-here>.eu-west-2.compute.amazonaws.com
```

CD into your-project directory to install packages, run provision.sh, you will be prompted to accept [Y/n]:
```shell
sudo sh provision.sh
```
