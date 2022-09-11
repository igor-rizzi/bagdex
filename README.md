# COMANDOS PARA INSTALAÇÃO E CONFIGURAÇÃO DE AMBIENTE RAILS UTILIZANDO VAGRANT

### COMANDOS DO VAGRANT

#### Verificar versão do vagrant
```
vagrant --version
```

### Instalação plugin do vagrant
```
Vagrant plugin install vagrant-vbguest
```

### Criação Vagrantfile
```
vagrant init GuiDev/Ubuntu-Rails5x --box-version 1.0.0
```

### Verificar Vagrantfile e edita-lo assim
```
Vagrant.configure("2") do |config|
 config.vm.box = "GuiDev/Ubuntu-Rails5x"
 config.vm.box_version = "1.0.0"
 config.vm.network :forwarded_port, guest: 3000, host: 3000
 config.vm.network :forwarded_port, guest: 5432, host: 5432
 config.vm.provider "virtualbox" do |vb|
 vb.gui = true
 vb.memory = "1024"
 end
end
```

### Iniciar Vagrant
```
vagrant up
```

### Para pausar a VirtualBox
```
vagrant suspend
```

### Para parar a VirtualBox
```
vagrant halt
```

### Estabelecer uma sessão SSH na VirtualBox em execução para fornecer acesso ao shell
```
vagrant ssh
```

## 2 - COMANDOS DO RUBY

### verificar versão
```
Ruby -v
```

### Instalar versão
```
gem install rails -v 5.2.8
```

### Verificar versão padrão do Ruby utilizando o gerenciador de versões do Ruby (RVM)
```
rvm list
```

### Verificar lista de versões disponíveis para instalação
```
rvm list known
```

### Instalar versão específica do Ruby
```
rvm install 2.3
```

### Colocar como padrão a versão específica do Ruby
```
rvm use 2.3
```

### Instalação de gem (pacotes)
```
gem install {nome do pacote. Ex: pry}
```

## 3 - COMANDOS DO RUBY ON RAILS

### Verificar versão do Rails
```
Rails -v 
```

### Criação de novo projeto Rails
```
rails new {nome do projeto}
```

### Rodar projeto
```
rails server -> rails s -b 0.0.0.0
```

### Crição de Scaffolding, criando um conjunto de arquivos gerados automaticamente que formam a estrutura básica de um projeto Rails.
```
rails generate scaffold <Model> <campo:tipo> <campo:tipo> …
```

### Criação de Controller
```
rails generate controller {nome da controller}
```

### Deletar Controller
```
rails destroy controller {nome}
```

### Subir aplicação e configurar por tipo de ambiente
```
RAILS_ENV=production rails s -b 0.0.0.0
rails s -b 0.0.0.0 -e production
```

## COMANDOS DE BANCO DE DADOS COM RAILS

### Acessar o console do banco de dados
```
rails dbconsole
```

### Criar o banco de dados
```
rails db:create
```

### Excluir o banco de dados
```
rails db:drop
```

### Rodar migrations
```
rails db:migrate
```

###  Mostrar quais migrations foram executadas no banco e quais não foram
```
rails db:migrate:status
```

### Rodar os seeds do banco de dados
```
rails db:seed
```

### Desfazer o último arquivo de migration
```
rails db:rollback
```

# 4 - DA UTILIZAÇÃO DO GIT

### Verificar versão
```
git --version
```

### Instalação via cmd
```
sudo apt-get install git
```


### Configurar usuário no seu git
```
git config --global user.email “email@email.com”
```

```
git config --global user.name “nome”
```

### Clonar repositório existente
```
git clone https://github.com/user/repository
```

### Criar um novo repositório
```
git init
```

### Alterar a url do respositório remoto
```
git remote set-url origin https://github.com/user/repository
```

### Exibe as mudanças efetuadas que ainda não foram commitadas
```
git status
```

### Exibir os registros dos commits realizados no histórico do repositório
```
git log
```

### Exibir todas as branchs
```
git branch -a
```

### Criar nova branc
```
git checkout -b {nome da nova branch}
```

### Mudar de branch
```
git checkout {nome da branch}
```

### Apagar branch local
```
git branch -D {nome da branch}
```

### Apagar branch remota
```
git push origin --delete {nome da branch}
```

### Adicionar alterações para o próximo commit
```
git add {nome do arquivo} {ou . pra incluir tudo}
```

### Criar commit e obrigatóriamente com uma mensagem
```
git commit -m "mensagem"
```

### Enviar o conteúdo do repositório local para um repositório remoto
```
git push
```
ou quando for o primeiro commit do repositório:

```
git push -u origin HEAD
```

### Arquivar alterações não commitadas do seu local de trabalho
```
git stash
```

### Aplicar as mudanças de um stash à área de trabalho
```
git stash pop
```

### Unir duas branchs
Ir para a branch que deseja aplicar as modificações
```
git merge {nome da outra branch}
```