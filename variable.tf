variable "name" { 
    type            = string
    default         = "msg-terraform-beispiel"
}

variable "resource_name" { 
    type            = string
    default         = "msg-terraform-resource"
}

variable "container_version" { 
    type            = string
    default         = "elcatibo/flask-kubernetes:v5.2"
}

variable "container_name" { 
    type            = string
    default         = "msg-terraform-container"
}