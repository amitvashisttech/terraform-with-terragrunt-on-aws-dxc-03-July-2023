## Variables

```
terraform plan -var-file=prod.tfvars.sample 
```

```
terraform plan -var="ec2_instance_name=RnD-Instance" -var="ec2_instance_count=2"
```

```
terraform plan -var="ec2_instance_name=RnD-Instance" -var="ec2_instance_count=2" -out build-plan
```