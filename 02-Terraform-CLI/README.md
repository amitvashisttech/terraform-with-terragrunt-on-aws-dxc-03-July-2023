```
1121  terraform init 
 1122  tree .terraform
 1123  rm -rf .terraform/providers/registry.terraform.io/hashicorp/aws/4.45.0 
 1124  ls
 1125  terraform init 
 1126  ls
 1127  vim first_deployment.tf 
 1128  ls
 1129  cat first_deployment.tf 
 1130  terraform fmt 
 1131  cat first_deployment.tf 
 1132  ls
 1133  vim first_deployment.tf 
 1134  terraform validate
 1135  vim first_deployment.tf 
 1136  terraform validate
 1137  vim first_deployment.tf 
 1138  terraform validate
 1139  ls
 1140  vim first_deployment.tf 
 1141  terraform fmt
 1142  terraform validate
 1143  vim first_deployment.tf 
 1144  terraform validate
 1145  terraform plan 
 1146  ls
 1147  vim first_deployment.tf 
 1148  terraform apply 
 1149  ls
 1150  terraform plan -out build-plan 
 1151  ls
 1152  file build-plan 
 1153  cat build-plan 
 1154  terraform show build-plan 
 1155  ls
 1156  terraform apply build-plan
 1157  terraform show build-plan 
 1158  ls
 1159  terraform show terraform.tfstate 
 1160  terraform show 
 1161  terraform apply build-plan
 1162  ls
 1163  terraform apply 
 1164  ls
 1165  terraform show 
 1166  terraform show | grep -i Name 
 1167  terraform show | grep  Name 
 1168  terraform refresh
 1169  ls
 1170  sdiff terraform.tfstate terraform.tfstate.backup 
 1171  ls -ltr 
 1172  ls
 1173  terraform apply 
 1174  terraform plan -destroy -out destroy-plan
 1175  terraform apply "destroy-plan"
 1176  terraform show 
 1177  ls
 1178  cat terraform.tfstate.backup 
 1179  cat terraform.tfstate
 ```