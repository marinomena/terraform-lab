## Environment setup

```
docker pull centos:centos8.4.2105

docker run -d --rm --name terraform-lab -v "%cd%":/data -w /data centos:centos8.4.2105 tail -f /dev/null

docker exec -it terraform-lab bash
```

## Install Terraform
```
yum update -y

yum install -y wget unzip

wget https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_linux_amd64.zip

unzip terraform_1.1.0_linux_amd64.zip 

mv terraform /usr/local/bin

chmod +x /usr/local/bin/terraform

rm -f terraform_1.1.0_linux_amd64.zip

terraform -version
```

## Setup your AWS KEY
```
export AWS_ACCESS_KEY_ID="your access key id"
export AWS_SECRET_ACCESS_KEY="your secret access key"
```


## Terraform main commands

```
terraform init

terraform plan

terraform apply

terraform destroy
```


## Important links
https://www.terraform.io/downloads.html

https://registry.terraform.io/providers/hashicorp/aws/latest/docs