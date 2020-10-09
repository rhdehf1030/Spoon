module "Networking" {
  source = ".\\01. Networking"
}

module "SecurityGroup" {
  source = ".\\02. Security Group"
  
  spoon = { id = module.Networking.spoon.id }

  webapp1 = { id = module.LEMP.webapp1.id }
  webapp2 = { id = module.LEMP.webapp2.id }
}

module "ALB" {
  source = ".\\03. ALB"
  
  spoon         = { id = module.Networking.spoon.id }

  webSecurityGroup = { 
    id = module.SecurityGroup.web.id
    name =  module.SecurityGroup.web.name 
  }

  dmz_2a = { id = module.Networking.dmz_2a.id }
  dmz_2c = { id = module.Networking.dmz_2c.id }

  web_2a = { id = module.Networking.web_2a.id }
  web_2c = { id = module.Networking.web_2c.id }

  webapp1 = { id = module.LEMP.webapp1.id }
  webapp2 = { id = module.LEMP.webapp2.id }
}

module "LEMP" {
  source = ".\\04. LEMP"

  webSecurityGroup = { 
    id = module.SecurityGroup.web.id
    name =  module.SecurityGroup.web.name 
  }

  web_2a = { id = module.Networking.web_2a.id }
  web_2c = { id = module.Networking.web_2c.id }
}
