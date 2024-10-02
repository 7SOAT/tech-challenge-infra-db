<h1 align="center"> Infra DB ☁️</h1>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<p align="justify">
  Para rodar o projeto localmente, primeiro você precisa se certificas que possui essas ferramentas insaladas:
</p>

* [NodeJS e NPM](https://nodejs.org/en)
* [Terraform](https://www.terraform.io/)
* [Kubernetes](https://kubernetes.io/pt-br/)

```
src
├── .terraform
|   ├── modules
├── data.tf
├── main.tf
├── rds.tf
└── variables.tf
```

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
<p align="justify">
  Exemplo de variáveis de ambiente:
</p>

```
db_name               = "my_database"
db_username           = "admin"
db_password           = "securepassword123"
```
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
<h3>Executar o projeto</h3>
<p>Para executar o projeto de autenticação utilizando Lambda na AWS, abra o terminal na raiz do projeto e execute os seguintes comandos:</p>

```
npm install -g dotenv-cli
```
```
dotenv -e .env -- terraform apply
```
<p>A partir disto o Actions irá prosseguir com a execução.</p>
