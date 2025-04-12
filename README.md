# Terraform + AWS + Docker

## Pré-requisitos:

- [Docker](https://www.docker.com) - [Instalação Docker Linux](https://docs.docker.com/engine/install/ubuntu/) - (Necessário instalar no seu ambiente para executar aplicação local)
- [Docker Compose](https://docs.docker.com/compose/) - [Instalação Docker Compose Linux](https://docs.docker.com/compose/install/linux/#install-the-plugin-manually) - (Necessário instalar no seu ambiente para executar aplicação local)
- [Git](https://git-scm.com/) - [Instalação Git Linux](https://linuxhint.com/install-git-ubuntu22-04/) - (Necessário instalar para baixar o projeto)
- [GitHub](https://github.com/)
- [AWS CLI](https://aws.amazon.com/pt/cli/) - [Instalação AWS CLI Linux](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) - (Necessário instalar no seu ambiente para executar IaC) 
- [Terraform](https://www.terraform.io) - [Instalação Terraform Linux](https://developer.hashicorp.com/terraform/cli/install/apt) - (Necessário instalar no seu ambiente para executar IaC)

## Export de ACESS KEY ID e SECRET ACCES KEY da AWS

Nota: Para criar chaves de acesso, você deve ter permissões para realizar as ações do IAM necessárias. Para obter mais informações, consulte 
- [Concessão de permissão ao usuário do IAM para gerenciar a política de senhas e as credenciais](https://docs.aws.amazon.com/pt_br/powershell/latest/userguide/pstools-appendix-sign-up.html)
- [Para obter seu ID de chave de acesso e a chave de acesso secreta](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_permissions-required.html)

Exporte o `AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY` como variáveis de ambiente e execute 'aws configure' para concluir a instalação:

```shell
export AWS_ACCESS_KEY_ID=<access-key>
export AWS_SECRET_ACCESS_KEY=<secret-key>
```

--------------

## Ferramentas utilizadas para IaC:

Comandos Terraform: 
```shell
terraform validate
terraform fmt
terraform plan
terraform apply
terraform destroy
```
--------------

## Desenvolvimento no ambiente AWS

### Após baixar o projeto do github, realizar os passos abaixo:


### **TERRAFORM - Criação de infraestrutura na AWS**

Nota: Antes de iniciar a criação da infraestrutura, certifique-se de que você já tem um Key Pair (Par de chave) na AWS, em caso de dúvida, siga o link para criar um Key Pair: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html

Com os pares de chaves criados, altere a linha 4 no arquivo '**ec2.tf**' e adicione o seu key pair.
    > key_name                    = "user-avanti" #Adicione sua Key Pairs da AWS aqui!

Para executar o aplicativo, simplesmente execute o seguinte comando na pasta "**terraform**":

```shell
terraform init
terraform plan
terraform apply 

```
--------------

## Authors

* **Luiz Carlos Nascimento Junior**
