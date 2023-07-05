locals { 
    frontend_name = "${join("-", tolist([var.project-name, "frontend"]))}" 
    backend_name = "${join("_", tolist([var.project-name, "backend"]))}"
}


locals { 
   backend_tags = {
    Owner  = "DevOps Team"
    Project = "Data Platform Development"
    Env     = "Dev"
    Application = "DataBases"
    Name = local.backend_name 
   }
}